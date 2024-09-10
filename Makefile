#!make
include .env

SERVICE_NAME=mysql
HOST=127.0.0.1
PORT=3306

PASSWORD=${MYSQL_ROOT_PASSWORD}
DATABASE=${MYSQL_DATABASE}
USER=${MYSQL_USER}

DOCKER_COMPOSE_FILE=./docker-compose.yml
DATABASE_CREATION=./structure/CafeAlPaso_DiazPaula.sql
DATABASE_POPULATION=./structure/population.sql

FILES=views functions stored_procedures triggers roles_users

.PHONY: all up objects test-db access-db down clean-db backup-db

all: info up objects

info:
	@echo "This is a project for $(DATABASE)"

up:
	@echo "Create the instance of docker"
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d --build

	@echo "Waiting for MySQL to be ready..."
	bash wait_docker.sh

	@echo "Create the import and run the script"
	docker exec $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD) -e "CREATE DATABASE IF NOT EXISTS $(DATABASE);"
	docker exec $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD) -e "source $(DATABASE_CREATION)"
	docker exec $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD) --local-infile=1 -e "source $(DATABASE_POPULATION)"

objects:
	@echo "Create objects in database"
	@for file in $(FILES); do \
		echo "Processing $$file and adding to the database: $(DATABASE)"; \
		docker exec $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD) -e "USE $(DATABASE); source ./sql_project/database_objects/$$file.sql"; \
	done

test-db:
	@echo "Testing the tables"
	@TABLES=$$(docker exec $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD) -N -B -e "USE $(DATABASE); SHOW TABLES;"); \
	for TABLE in $$TABLES; do \
		echo "Table: $$TABLE"; \
		docker exec $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD) -e "USE $(DATABASE); SELECT * FROM $$TABLE LIMIT 5;"; \
		echo "----------------------------------------------"; \
	done

access-db:
	@echo "Access to db-client"
	docker exec -it $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD)

backup-db:
	@echo "Backing up database structure and data"
	docker exec $(SERVICE_NAME) mysqldump -u $(USER) -p$(PASSWORD) $(DATABASE) > ./backup/$(DATABASE)-$$(date +'%Y-%m-%d').sql

clean-db:
	@echo "Removing the database"
	docker exec $(SERVICE_NAME) mysql -u $(USER) -p$(PASSWORD) -e "DROP DATABASE IF EXISTS $(DATABASE);"
	@echo "Bye"
	docker-compose -f $(DOCKER_COMPOSE_FILE) down
