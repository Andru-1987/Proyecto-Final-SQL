USE CafeAlPaso_DiazPaula;


SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE '/structure/users.csv' 
INTO TABLE CafeAlPaso_DiazPaula.USERS
FIELDS TERMINATED BY ',' -- ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


INSERT INTO SUBSCRIPTION_PLANS (PLAN_ID, PLAN_NAME, PRICE, DAILY_LIMIT_TRAD, DAILY_LIMIT_SPEC)
VALUES
(1, 'Basico', 30000.00, 1, 0),
(2, 'Bronze', 50000.00, 2, 0),
(3, 'Silver', 70000.00, 2, 1),
(4, 'Gold', 100000.00, 100, 1),
(5, 'Diamond', 130000.00, 100, 100);

INSERT INTO CAFETERIAS (CAFETERIA_ID, NAME, ADDRESS, PHONE, EMAIL, OPENING_HOURS, CLOSING_HOURS)
VALUES
(1, 'Cafe Martinez', 'Calle Güemes 2551', '223-495-1234', 'martinez@example.com', '08:00', '20:00'),
(2, 'Cafe Boston', 'Av. Colon 1902', '223-494-5678', 'boston@example.com', '07:00', '20:00'),
(3, 'La Fonte D\'Oro', 'Calle San Martin 2444', '223-493-9876', 'lafontedoro@example.com', '07:00', '22:00'),
(4, 'Cafe Havanna', 'Av. Juan B. Justo 1367', '223-491-2468', 'havanna@example.com', '09:00', '21:00'),
(5, 'Cafe Cabrales', 'Calle Rivadavia 3108', '223-492-7890', 'cabrales@example.com', '08:00', '19:00'),
(6, 'Cafe Antares', 'Calle Cordoba 3025', '223-496-1234', 'antares@example.com', '10:00', '24:00'),
(7, 'Cafe La Vereda', 'Av. Independencia 1784', '223-495-5678', 'lavereda@example.com', '07:30', '20:30'),
(8, 'Cafe Oliva', 'Calle Alem 3440', '223-493-9876', 'oliva@example.com', '09:30', '21:30'),
(9, 'Cafe Soriano', 'Calle San Juan 2112', '223-491-2468', 'soriano@example.com', '09:00', '21:00'),
(10, 'Cafe Pueyrredon', 'Av. Pueyrredon 2901', '223-492-7890', 'pueyrredon@example.com', '08:00', '20:00'),
(11, 'Cafe Montesco', 'Calle Alberti 1565', '223-496-1357', 'montesco@example.com', '08:00', '20:00'),
(12, 'Cafe Boulevard', 'Calle Güemes 3456', '223-497-2468', 'boulevard@example.com', '07:00', '20:00'),
(13, 'Cafe Argentino', 'Av. Libertad 890', '223-493-1357', 'argentino@example.com', '08:00', '21:00'),
(14, 'Cafe Paris', 'Calle Moreno 2121', '223-495-5678', 'paris@example.com', '08:00', '22:00'),
(15, 'Cafe Horizonte', 'Calle Santiago del Estero 3456', '223-496-7890', 'horizonte@example.com', '09:00', '21:00'),
(16, 'Cafe Rincon', 'Av. Constitucion 1234', '223-497-5678', 'rincon@example.com', '10:00', '18:00'),
(17, 'Cafe Nueva Era', 'Calle Mitre 4567', '223-495-1357', 'nuevaera@example.com', '11:00', '21:00'),
(18, 'Cafe Del Mar', 'Av. Peralta Ramos 1111', '223-496-7890', 'delmar@example.com', '08:00', '20:00'),
(19, 'Cafe Plaza', 'Calle La Rioja 5678', '223-497-2468', 'plaza@example.com', '07:00', '20:00'),
(20, 'Cafe Italiano', 'Av. Luro 3456', '223-495-1357', 'italiano@example.com', '08:00', '22:00');

INSERT INTO MENU_ITEMS (ITEM_NAME, ITEM_TYPE)
VALUES
('Espresso', 'TRADICIONAL'),
('Americano', 'TRADICIONAL'),
('Cappuccino', 'TRADICIONAL'),
('Latte', 'TRADICIONAL'),
('Mocha', 'TRADICIONAL'),
('Macchiato', 'TRADICIONAL'),
('Flat White', 'TRADICIONAL'),
('Affogato', 'TRADICIONAL'),
('Cold Brew', 'TRADICIONAL'),
('Nitro Coffee', 'ESPECIAL'),
('Caramel Macchiato', 'ESPECIAL'),
('Vanilla Latte', 'ESPECIAL'),
('Matcha Latte', 'ESPECIAL'),
('Irish Coffee', 'ESPECIAL'),
('Turkish Coffee', 'ESPECIAL');

INSERT INTO SUBSCRIPTION (SUBSCRIPTION_ID, USER_ID, PLAN_ID, START_DATE, END_DATE, STATUS)
VALUES
(1, 1, 1, '2024-01-01', '2024-02-01', 'active'),
(2, 2, 2, '2024-01-01', '2024-02-01', 'active'),
(3, 3, 3, '2024-01-01', '2024-02-01', 'active'),
(4, 4, 4, '2024-01-01', '2024-02-01', 'active'),
(5, 5, 5, '2024-01-01', '2024-02-01', 'active'),
(6, 542, 3, '2023-01-15', '2023-02-14', 'active'),
(7, 398, 1, '2022-10-05', '2022-11-04', 'inactive'),
(8, 754, 2, '2023-06-22', '2023-07-22', 'active'),
(9, 621, 4, '2022-09-14', '2022-10-14', 'inactive'),
(10, 198, 5, '2023-03-09', '2023-04-08', 'active'),
(11, 485, 2, '2022-11-11', '2022-12-11', 'active'),
(12, 676, 1, '2023-05-17', '2023-06-16', 'inactive'),
(13, 912, 3, '2022-08-23', '2022-09-22', 'active'),
(14, 314, 4, '2023-02-06', '2023-03-08', 'active'),
(15, 789, 2, '2023-07-05', '2023-08-04', 'inactive'),
(16, 233, 1, '2022-12-27', '2023-01-26', 'inactive'),
(17, 957, 5, '2022-11-14', '2022-12-14', 'active'),
(18, 576, 4, '2023-04-18', '2023-05-18', 'inactive'),
(19, 445, 3, '2022-09-01', '2022-10-01', 'inactive'),
(20, 872, 1, '2022-10-20', '2022-11-19', 'active'),
(21, 332, 5, '2023-06-29', '2023-07-29', 'active'),
(22, 611, 2, '2023-01-04', '2023-02-03', 'inactive'),
(23, 773, 3, '2022-12-10', '2023-01-09', 'active'),
(24, 159, 4, '2023-03-25', '2023-04-24', 'inactive'),
(25, 482, 1, '2022-07-31', '2022-08-30', 'inactive');

  
INSERT INTO CAFETERIA_MENU (CAFETERIA_ID, ITEM_ID)
VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7),
(2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 8), (2, 9),
(3, 3), (3, 4), (3, 5), (3, 7), (3, 8), (3, 10), (3, 11),
(4, 4), (4, 5), (4, 6), (4, 9), (4, 10), (4, 12), (4, 13),
(5, 5), (5, 6), (5, 7), (5, 11), (5, 12), (5, 14), (5, 15),
(6, 6), (6, 7), (6, 8), (6, 12), (6, 13), (6, 14), (6, 15),
(7, 7), (7, 8), (7, 9), (7, 13), (7, 14), (7, 15), (7, 1),
(8, 8), (8, 9), (8, 10), (8, 11), (8, 13), (8, 14), (8, 2),
(9, 9), (9, 10), (9, 11), (9, 12), (9, 14), (9, 15), (9, 3),
(10, 10), (10, 11), (10, 12), (10, 13), (10, 15), (10, 1), (10, 4),
(11, 11), (11, 12), (11, 13), (11, 14), (11, 2), (11, 3), (11, 5),
(12, 12), (12, 13), (12, 14), (12, 15), (12, 1), (12, 6), (12, 7),
(13, 13), (13, 14), (13, 15), (13, 2), (13, 4), (13, 8), (13, 10),
(14, 14), (14, 15), (14, 3), (14, 5), (14, 7), (14, 9), (14, 11),
(15, 15), (15, 1), (15, 2), (15, 4), (15, 6), (15, 8), (15, 10),
(16, 1), (16, 3), (16, 5), (16, 7), (16, 9), (16, 11), (16, 13),
(17, 2), (17, 4), (17, 6), (17, 8), (17, 10), (17, 12), (17, 14),
(18, 3), (18, 5), (18, 7), (18, 9), (18, 11), (18, 13), (18, 15),
(19, 4), (19, 6), (19, 8), (19, 10), (19, 12), (19, 14), (19, 1),
(20, 5), (20, 7), (20, 9), (20, 11), (20, 13), (20, 15), (20, 2);

INSERT INTO CONSUMPTIONS (CONSUMPTION_ID, USER_ID, CAFETERIA_ID, SUBSCRIPTION_ID, DATE, TYPE)
VALUES
(1, 15, 3, 10, '2023-08-12', 'tradicional'),
(2, 15, 7, 10, '2023-09-05', 'especial'),
(3, 42, 12, 20, '2023-10-20', 'tradicional'),
(4, 58, 5, 9, '2023-11-01', 'especial'),
(5, 67, 19, 23, '2023-12-15', 'tradicional'),
(6, 73, 2, 14, '2024-01-30', 'especial'),
(7, 85, 8, 25, '2024-02-22', 'tradicional'),
(8, 92, 4, 18, '2024-03-14', 'especial'),
(9, 104, 17, 22, '2024-04-08', 'tradicional'),
(10, 116, 11, 7, '2024-05-19', 'especial'),
(11, 123, 9, 24, '2024-06-10', 'tradicional'),
(12, 137, 6, 13, '2024-07-01', 'especial'),
(13, 149, 16, 21, '2024-08-23', 'tradicional'),
(14, 156, 13, 12, '2024-09-12', 'especial'),
(15, 164, 20, 19, '2024-10-05', 'tradicional'),
(16, 175, 1, 8, '2024-11-18', 'especial'),
(17, 182, 15, 17, '2024-12-30', 'tradicional'),
(18, 191, 18, 10, '2025-01-22', 'especial'),
(19, 203, 7, 16, '2025-02-14', 'tradicional'),
(20, 210, 14, 11, '2025-03-07', 'especial');

INSERT INTO PAYMENT_HISTORY (USER_ID, SUBSCRIPTION_ID, PAYMENT, PAYMENT_DATE, PAYMENT_METHOD)
VALUES
(12, 1, 30000, '2022-08-15 14:32:00', 'TARJETA'),
(25, 2, 50000, '2022-09-12 10:21:00', 'TRANSFERENCIA'),
(37, 3, 70000, '2022-10-20 09:15:00', 'TARJETA'),
(41, 4, 100000, '2022-11-03 11:00:00', 'TRANSFERENCIA'),
(56, 5, 130000, '2022-12-01 16:45:00', 'TARJETA'),
(62, 6, 30000, '2023-01-10 13:05:00', 'TRANSFERENCIA'),
(73, 7, 50000, '2023-02-22 17:30:00', 'TARJETA'),
(85, 8, 70000, '2023-03-14 12:00:00', 'TRANSFERENCIA'),
(91, 9, 100000, '2023-04-06 15:40:00', 'TARJETA'),
(103, 10, 130000, '2023-05-22 18:20:00', 'TRANSFERENCIA'),
(115, 11, 30000, '2023-06-17 14:10:00', 'TARJETA'),
(129, 12, 50000, '2023-07-05 09:50:00', 'TRANSFERENCIA'),
(136, 13, 70000, '2023-08-19 11:30:00', 'TARJETA'),
(142, 14, 100000, '2023-09-15 16:00:00', 'TRANSFERENCIA'),
(153, 15, 130000, '2023-10-09 12:40:00', 'TARJETA'),
(164, 1, 30000, '2023-11-23 14:25:00', 'TRANSFERENCIA'),
(175, 2, 50000, '2023-12-18 17:00:00', 'TARJETA'),
(188, 3, 70000, '2024-01-10 15:15:00', 'TRANSFERENCIA'),
(193, 4, 100000, '2024-02-25 10:35:00', 'TARJETA'),
(204, 5, 130000, '2024-03-11 13:45:00', 'TRANSFERENCIA'),
(217, 6, 30000, '2024-04-08 12:55:00', 'TARJETA'),
(226, 7, 50000, '2024-05-20 11:25:00', 'TRANSFERENCIA'),
(237, 8, 70000, '2024-06-01 16:10:00', 'TARJETA'),
(245, 9, 100000, '2024-07-14 14:00:00', 'TRANSFERENCIA'),
(258, 10, 130000, '2024-08-23 09:40:00', 'TARJETA'),
(269, 11, 30000, '2024-09-17 13:20:00', 'TRANSFERENCIA'),
(276, 12, 50000, '2024-10-11 15:50:00', 'TARJETA'),
(287, 13, 70000, '2024-11-05 10:15:00', 'TRANSFERENCIA'),
(293, 14, 100000, '2024-12-08 17:30:00', 'TARJETA'),
(305, 15, 130000, '2025-01-19 14:45:00', 'TRANSFERENCIA'),
(314, 1, 30000, '2025-02-25 16:00:00', 'TARJETA'),
(327, 2, 50000, '2025-03-15 11:20:00', 'TRANSFERENCIA'),
(336, 3, 70000, '2025-04-07 12:05:00', 'TARJETA'),
(347, 4, 100000, '2025-05-01 13:50:00', 'TRANSFERENCIA');


INSERT INTO PROMOTIONS (PROMOTION_NAME, DISCOUNT, START_DATE, END_DATE, APPLICABLE_TO_ALL, USER_ID, PLAN_ID)
VALUES
('Descuento Verano', 15.00, '2024-06-01 00:00:00', '2024-08-31 23:59:59', TRUE, NULL, NULL),
('Oferta Primavera', 10.00, '2024-03-01 00:00:00', '2024-05-31 23:59:59', TRUE, NULL, NULL),
('Promocion de Año Nuevo', 20.00, '2024-12-01 00:00:00', '2024-12-31 23:59:59', TRUE, NULL, NULL),
('Descuento de Cumpleaños', 25.00, '2024-07-01 00:00:00', '2024-07-31 23:59:59', FALSE, 101, 2),
('Oferta Especial del Cafe', 30.00, '2024-09-01 00:00:00', '2024-09-30 23:59:59', FALSE, 102, 3),
('Promo de Fin de Semana', 5.00, '2024-06-01 00:00:00', '2024-06-30 23:59:59', TRUE, NULL, NULL),
('Descuento por Referencia', 12.00, '2024-10-01 00:00:00', '2024-12-31 23:59:59', FALSE, 103, 4),
('Oferta Black Friday', 40.00, '2024-11-24 00:00:00', '2024-11-30 23:59:59', TRUE, NULL, NULL),
('Descuento de Navidad', 20.00, '2024-12-01 00:00:00', '2024-12-24 23:59:59', TRUE, NULL, NULL),
('Promo de Otoño', 18.00, '2024-09-01 00:00:00', '2024-11-30 23:59:59', TRUE, NULL, NULL),
('Descuento de Año Nuevo Lunar', 15.00, '2024-01-01 00:00:00', '2024-01-31 23:59:59', TRUE, NULL, NULL),
('Oferta de Media Temporada', 10.00, '2024-05-01 00:00:00', '2024-05-31 23:59:59', FALSE, 104, 1),
('Descuento de Primavera', 8.00, '2024-03-01 00:00:00', '2024-05-31 23:59:59', FALSE, 105, 2),
('Promo de Regreso a Clases', 12.00, '2024-08-01 00:00:00', '2024-08-31 23:59:59', TRUE, NULL, NULL),
('Descuento de Fin de Año', 30.00, '2024-12-01 00:00:00', '2024-12-31 23:59:59', FALSE, 106, 3);

INSERT INTO REVIEWS (USER_ID, CAFETERIA_ID, RATING, COMMENT, REVIEW_DATE)
VALUES
(12, 1, 4, 'Buen cafe, aunque la espera fue un poco larga.', '2022-08-16'),
(25, 2, 5, 'Excelente calidad y servicio. Muy recomendable.', '2022-09-13'),
(37, 3, 3, 'El cafe estaba frio, pero el ambiente es agradable.', '2022-10-21'),
(41, 4, 4, 'Buena opcion para una tarde de cafe. Recomiendo el espresso.', '2022-11-04'),
(56, 5, 5, 'El mejor cafe que he probado. Definitivamente volvere.', '2022-12-02'),
(62, 6, 4, 'Cafe bueno y personal amable. Sin embargo, el lugar estaba muy lleno.', '2023-01-11'),
(73, 7, 3, 'Cafe promedio, pero el ambiente es muy agradable.', '2023-02-23'),
(85, 8, 5, 'Un lugar excelente para disfrutar de un cafe especial. ¡Muy satisfecho!', '2023-03-15'),
(91, 9, 2, 'El cafe estaba muy amargo. No volvere.', '2023-04-07'),
(103, 10, 4, 'Buen cafe y buen servicio, pero el lugar podria ser mas comodo.', '2023-05-23'),
(115, 11, 5, 'Me encanto el cafe y la atencion. Recomendado.', '2023-06-18'),
(129, 12, 3, 'Cafe aceptable, pero el lugar necesita una renovacion.', '2023-07-06'),
(136, 13, 4, 'Buena calidad de cafe, aunque el servicio fue un poco lento.', '2023-08-20'),
(142, 14, 5, 'Excelente cafe y gran ambiente. Volvere pronto.', '2023-09-16'),
(153, 15, 2, 'No me gusto el cafe, parecia viejo.', '2023-10-10'),
(164, 1, 4, 'El cafe estaba bien, pero el lugar estaba muy lleno.', '2023-11-24'),
(175, 2, 3, 'Servicio promedio, cafe bueno pero no excepcional.', '2023-12-19'),
(188, 3, 5, 'Un excelente lugar para tomar cafe. Muy recomendado.', '2024-01-11'),
(193, 4, 4, 'Buen cafe, pero el ambiente podria mejorar.', '2024-02-26'),
(204, 5, 5, 'La mejor experiencia de cafe que he tenido. Volvere.', '2024-03-12'),
(217, 6, 3, 'Cafe aceptable y lugar agradable. Podria mejorar.', '2024-04-09'),
(226, 7, 4, 'Buen cafe y buen servicio. Una buena experiencia.', '2024-05-21'),
(237, 8, 5, 'El cafe es excelente y el ambiente es muy agradable.', '2024-06-02'),
(245, 9, 2, 'El cafe no estaba a la altura de las expectativas.', '2024-07-15'),
(258, 10, 4, 'Buen cafe y buen ambiente, pero el servicio fue lento.', '2024-08-24'),
(269, 11, 5, 'Una experiencia maravillosa. El cafe es de primera.', '2024-09-18'),
(276, 12, 3, 'Cafe promedio. No me impresiono.', '2024-10-12'),
(287, 13, 4, 'Cafe bueno y ambiente acogedor. Volvere.', '2024-11-06'),
(293, 14, 5, 'El mejor cafe en la ciudad. Muy recomendable.', '2024-12-09'),
(305, 15, 3, 'Cafe aceptable pero no es el mejor.', '2025-01-20'),
(314, 1, 4, 'Buen cafe y buen servicio, aunque el lugar esta un poco ruidoso.', '2025-02-26'),
(327, 2, 5, 'Excelente cafe y ambiente. Volvere seguro.', '2025-03-16'),
(336, 3, 2, 'No me gusto el cafe ni el ambiente.', '2025-04-08'),
(347, 1, 5, 'Cafe bueno y ambiente comodo. Una buena opcion.', '2025-05-02');

