USE tiendaxyz;
--SUCURSAL
INSERT INTO sucursal (IDsucursal,nombre,departamento,distrito,direccion) VALUES
(1,'Sucursal1','Arequipa','Paucarpata','Urb. Nueva Esperanza A-4');
INSERT INTO sucursal (IDsucursal,nombre,departamento,distrito,direccion) VALUES
(2,'Sucursal2','Camana','Las Lomas','Urb. Quintilla C-5');
INSERT INTO sucursal (IDsucursal,nombre,departamento,distrito,direccion) VALUES
(3,'Sucursal2','Caraveli','Caraveli','Av. Progreso C-1');
INSERT INTO sucursal (IDsucursal,nombre,departamento,distrito,direccion) VALUES
(4,'Sucursal4','Caylloma','Lluta','Av. Progreso C-8');
--ADMIN
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,IDsucursal,rol) VALUES
('70348190','EdwardHC','Edward','Huayllasco',986425658,1,'administrador');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,IDsucursal,rol) VALUES
('70348191','SolangeRC','Solange','Romero',986478965,2, 'administrador');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,IDsucursal,rol) VALUES
('29574215','ShyndellCA','Shyndell','Cutipa',956895684,3, 'administrador');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,IDsucursal,rol) VALUES
('29736452','WalterRG','Walter','Romero',963578564,4, 'administrador');
------CAJEROS
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348194','Sucursal0','Denys','Murrison','989423574',200.00,'7:00','11:00',1,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348195','Sucursal0','Marlane','Carradice','949823564',150.00,'11:00','15:00',1,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348196','Sucursal0','Chariot','Lawland','989423569',100.00,'15:00','19:00',1,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348197','Sucursal1','Paulie','Studde','949523684',250.00,'7:00','11:00',2,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348198','Sucursal1','Padget','Spurryer','929658764',200.00,'11:00','15:00',2,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348199','Sucursal1','Thorsten','Wardlaw','999895623',50.00,'15:00','19:00',2,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348200','Sucursal2','Frazer','Deave','989657892',55.00,'7:00','11:00',3,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348201','Sucursal2','Chris','Pullin','959692356',60.00,'11:00','15:00',3,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348202','Sucursal2','Chaim','Houlison','979856236',65.00,'15:00','19:00',3,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348203','Sucursal3','Aluino','Fibbens','936589564',100.00,'7:00','11:00',4,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348204','Sucursal3','Christoper','Matitiaho','919256897',80.00,'11:00','15:00',4,'cajero');
INSERT INTO empleado (DNI,password,nombres,apellidos,telefono,vale,InicioTurno,FinTurno,IDsucursal,rol) 
VALUES ('70348205','Sucursal3','Gayler','Gwinnell','986932654',150.00,'15:00','19:00',4,'cajero');
-- EQUIPO 
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (100, 'Popcorn Maker 30VHE Inteligente','Oster', 'Popcorn Maker con cuerpo de plástico ABS de alto impacto, Cubierta transparente evita el desborde del popocorn durante la cocción, incluye cuchara dosificadora', 144, 2403.45);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (101, 'Televisor NBDFV Moderno', 'LG','Televisor de 49 pulgadas y tecnología LED, resolución 4K Ultra HD, con conexión bluetooth y 2 entradas de USB', 104, 2894.31);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (102, 'Hervidor de Huevos BWHZ7 Moderno', 'Imaco','Hervidor de Huevos con apagado automático, capacidad de 1lt y con base desmontable', 199, 2145.42);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (103, 'Corta Friambres S8BFY Multifuncional','oster', 'Corta Friambres con hoja de acero inoxidable de fácil limpieza', 117, 1831.38);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (104, 'Rallador de Verduras 5VWNI PRO','Imaco', 'Rallador de Verduras cuyo material de la base es prolipopileno y material de las cuchillas de acero inoxidable, recipiente de plástico', 170, 143.09);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (105, 'Refrigeradora G3RA6 Acero','Samsung', 'Refrigeradora con potencia de 1000W, apagado automático y tipo de pantalla digital', 153, 1618.05);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (106, 'Masajeador para el Cuero Cabelludo L4KQY Moderno','Home', 'Masajeador para el Cuero Cabelludo uso en todo tipo de cabello, unisex e individual', 115, 2529.69);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (107, 'Popcorn Maker H35TG Silencioso','Oster', 'Popcorn Maker con cuerpo de plástico ABS de alto impacto, Cubierta transparente evita el desborde del popocorn durante la cocción, incluye cuchara dosificadora', 64, 1520.75);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (108, 'Extractor VFN4U Ultra','Oster', 'Extractor de jugos con capacidad de 1.25 kt, número de velocidades 2 y apto para lavavajillas', 63, 2536.33 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (109, 'Microondas IWFJ1 Silencioso','Oster', 'Microondas con capacidad de 28 Lt., potencia de 900 Watts, cuenta con bloqueo de seguridad y pantalla digital', 163, 1403.3);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (110, 'Rallador de Verduras WD6C9 Silencioso','Oster', 'Rallador de Verduras cuyo material de la base es prolipopileno y material de las cuchillas de acero inoxidable, recipiente de plástico', 63, 2757.97);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (111, 'Rallador de Verduras BQJ6Z Acero','Oster', 'Rallador de Verduras cuyo material de la base es prolipopileno y material de las cuchillas de acero inoxidable, recipiente de plástico', 106, 4452.86);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (112, 'Olla Arrocera PB6HQ Moderno','Panasonic', 'Olla Arrocera de metal con capacidad de 1.2lt con garantía de 12 meses', 74, 4229.19);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (113, 'Secadora 1TOMK Multifuncional','Panasonic', 'Secadora con 2 niveles de temperatura, opción de aire frío y iones, número de velocidades 2, potencia de 1875W y longitud de cable de 180cm', 125, 2851.79);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (114, 'Batidor de Espuma LISTE Moderno','Panasonic', 'Batidor de Espuma de acero inoxidable, incluye un manual de instrucciones y con eficiencia energética de A++', 152, 4034.16);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (115, 'Exprimidor 0NJIF Artisan','Panasonic', 'Exprimidor de plástico sin cuchillas de potencia de 25 W y peso de 0.275 kg', 156, 417.97);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (116, 'Freidora 4F27J Contemporáneo','Panasonic', 'Freidora de Aire con capacidad de 4lts, material de plástico de alto impacto con temperatura máxima de 230C', 79, 740.85);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (117, 'Refrigeradora QR1Z6 Multifuncional','Panasonic', 'Refrigeradora con potencia de 1000W, apagado automático y tipo de pantalla digital', 179, 2394.06);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (118, 'Hervidor Eléctrico CI0EF Moderno','Panasonic', 'Hervidor Eléctrico de plástico con capacidad de 1.2lt, base desmontable y apagado automático', 94, 1331.5);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (119, 'Arrocera X1CAE 100','Panasonic', 'Arrocera Multifuncional 10 en 1 con capacidad en litros de 2.2 cuyo material de las tapas es de vidrio refractario', 139, 2497.86);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (120, 'Fondue Eléctrico TDYJC Contemporáneo','Panasonic', 'Fondue Eléctrico de acero inoxidable, capacidad de 1lt y potencia de 1200 W', 100, 4687.37);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (121, 'Masajeador para el Cuero Cabelludo B6U4Q Inteligente','Panasonic', 'Masajeador para el Cuero Cabelludo uso en todo tipo de cabello, unisex e individual', 148, 3712.41 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (122, 'Wafflera G43H9 Inteligente','Panasonic', 'Wafflera antiadherente con capacidad de 1 alimento y luz indicadora de encendido', 168, 4388.02);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (123, 'Cepillo Eléctrico NDI3W Artisan','Samsung', 'Cepillo Eléctrico Innova Hotbrush duo con potencia de 40W y temperatura áxima de 230C', 86, 2866.34);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (124, 'Cepillo Eléctrico 7P1BF Xtra','Samsung', 'Cepillo Eléctrico Innova Hotbrush duo con potencia de 40W y temperatura áxima de 230C', 125, 4304.19);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (125, 'Procesador de Alimentos OBDP8 Contemporáneo','Samsung', 'Procesador de Alimentos con capacidad de 2lt, número de velocidades 7 y potencia de 1000 W', 67, 2056.78);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (126, 'Hervidor de Huevos PQC9L Inteligente','Samsung', 'Hervidor de Huevos con apagado automático, capacidad de 1lt y con base desmontable', 115, 367.46);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (127, 'Termo con Medición 27H48 Xtra','Samsung', 'Termo con Medición con un peso de 280g y potencia de 500W', 128, 4625.07);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (128, 'Televisor R81KH Inteligente','Samsung', 'Televisor de 49 pulgadas y tecnología LED, resolución 4K Ultra HD, con conexión bluetooth y 2 entradas de USB', 110, 3281.1);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (129, 'Corta Friambres W8I3D Silencioso','Samsung', 'Corta Friambres con hoja de acero inoxidable de fácil limpieza', 184, 1434.7);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (130, 'Popcorn Maker 8K7UI Silver','Samsung', 'Popcorn Maker con cuerpo de plástico ABS de alto impacto, Cubierta transparente evita el desborde del popocorn durante la cocción, incluye cuchara dosificadora', 164, 561.09);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (131, 'Licuadora VXA3M Ultra', 'Samsung','Licuadora con capacidad de 2lt, número de velocidades 3, material del recipiente es de vidrio y material de las cuchillas es de acero inoxidable', 129, 4131.15);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (132, 'Masajeador para el Cuero Cabelludo 4Q6VZ Multifuncional','Samsung', 'Masajeador para el Cuero Cabelludo uso en todo tipo de cabello, unisex e individual', 141, 2821.02);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (133, 'Campana Extractora T4EAI Acero','Samsung', 'Campana Extractora con material de filtro de aluminio y profundidad de 49cm', 131, 4997.55 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (134, 'Máquina para hacer pan ZB9LO Silver', 'Samsung','Máquina para hacer pan con potencia de 550W, capacidad de 2lt y material de acero inoxidable', 95, 4421.58);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (135, 'Lavadora GSDYR Negro','Samsung', 'Lavadora de acero inoxidable con tipo de carga frontal, capacidad de 12kg de lavado y 7kg de secado', 119, 4749.21);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (136, 'Cocineta FYLPM Platinium','Samsung', 'Cocineta de metal con profundidad de 24.5 cm, ancho de 23.6 cm, alto de 7cm y potencia de 1000W ', 142, 3814.41);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (137, 'Exprimidor 32MUN Metal', 'Samsung','Exprimidor de plástico sin cuchillas de potencia de 25 W y peso de 0.275 kg', 181, 4595.49);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (138, 'Termo 9QM87 Moderno','Samsung', 'Termo Hervidor con capacidad de 2.8lt y sin panel de temeperatura, su material principal es el acero inoxidable y cuenta con un apagado automático', 138, 4008.89);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (139, 'Audifonos QZL5A Artisan','Samsung', 'Audífono Skullcandy Cassette bt y con potencia de 40mW y con salida auxiliar', 100, 4962.18);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (140, 'Mini Refrigerador 93CWB Multifuncional','Samsung', 'Mini Refrigerador unisex para conservar cremas y maquillajes con garantía de 1 año', 164, 1227.23);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (141, 'Mini Refrigerador QU87F Xtra','Samsung', 'Mini Refrigerador unisex para conservar cremas y maquillajes con garantía de 1 año', 198, 3676.78 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (142, 'Cafetera 0OGD9 Moderno','Samsung', 'Cafetera cuya presión en bares es de 15, capacidad de .8lt, no cuenta con espumador de leche y realiza un apagado automático', 84, 882.63);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (143, 'Batidora UH9K7 Metal','Samsung', 'Batidora de Pedestal cuyo número de velocidades es 6, capacidad de recipiente 4lt y material de acero inoxidable', 165, 3614.09);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (144, 'Exprimidor 8GL2A Negro','Oster', 'Exprimidor de plástico sin cuchillas de potencia de 25 W y peso de 0.275 kg', 197, 4941.01);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (145, 'Freidora RSPQ3 PRO', 'Oster','Freidora de Aire con capacidad de 4lts, material de plástico de alto impacto con temperatura máxima de 230C', 173, 1571.51);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (146, 'Calefactor IZAXO PRO','Oster', 'Calefactor sin conexión a WIFI, 3 niveles de potencia y potencia máxima de 1200 Watts', 183, 3868.29);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (147, 'Procesador de Alimentos SBFKJ Xtra','Oster', 'Procesador de Alimentos con capacidad de 2lt, número de velocidades 7 y potencia de 1000 W', 190, 4073.66);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (148, 'Horno Eléctrico ZCV5A Contemporáneo','Oster', 'Horno Eléctrico con capacidad de 30lt, material principal de metal y temperatura máxima de 250C', 112, 4205.15);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (149, 'Impresora UKC7G Silver', 'Canon','Impresora Multifuncional Smart Tank con tipo de inyección térmica, conexión bluetooth, conexión WIFI y una entrada USB', 136, 4405.04 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (150, 'Hervidor Eléctrico WJ4MD PRO', 'Oster','Hervidor Eléctrico de plástico con capacidad de 1.2lt, base desmontable y apagado automático', 161, 344.56);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (151, 'Licuadora TZ8G2 Moderno', 'Oster','Licuadora con capacidad de 2lt, número de velocidades 3, material del recipiente es de vidrio y material de las cuchillas es de acero inoxidable', 75, 2869.68);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (152, 'Alisadora de Cabello M3RCO Inteligente','Oster', 'Alisadora de Cabello con temperatura máxima 210C, material de placas de cerámica y potencia de 45 Watts', 178, 1737.41);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (153, 'Freidora 2YBMP Negro','Oster', 'Freidora de Aire con capacidad de 4lts, material de plástico de alto impacto con temperatura máxima de 230C', 155, 2835.14);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (154, 'Televisor HQ8XI Silver', 'LG','Televisor de 49 pulgadas y tecnología LED, resolución 4K Ultra HD, con conexión bluetooth y 2 entradas de USB', 56, 984.49);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (155, 'Licuadora T283K Silencioso', 'Imaco','Licuadora con capacidad de 2lt, número de velocidades 3, material del recipiente es de vidrio y material de las cuchillas es de acero inoxidable', 128, 1467.94);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (156, 'Exprimidor SFQY1 Acero', 'Imaco','Exprimidor de plástico sin cuchillas de potencia de 25 W y peso de 0.275 kg', 178, 4960.82);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (157, 'Impresora DVNPA Silver','Brother', 'Impresora Multifuncional Smart Tank con tipo de inyección térmica, conexión bluetooth, conexión WIFI y una entrada USB', 71, 536.86);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (158, 'Cepillo Eléctrico T346M Silencioso','Imaco', 'Cepillo Eléctrico Innova Hotbrush duo con potencia de 40W y temperatura áxima de 230C', 128, 4318.68 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (159, 'Hervidor Eléctrico IT6DO Inteligente','Imaco', 'Hervidor Eléctrico de plástico con capacidad de 1.2lt, base desmontable y apagado automático', 146, 887.19);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (160, 'Fondue Eléctrico WNKU6 Multifuncional','Imaco', 'Fondue Eléctrico de acero inoxidable, capacidad de 1lt y potencia de 1200 W', 189, 3857.22);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (161, 'Secadora 4Z0RK Contemporáneo','Imaco', 'Secadora con 2 niveles de temperatura, opción de aire frío y iones, número de velocidades 2, potencia de 1875W y longitud de cable de 180cm', 121, 3420.6);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (162, 'Olla Arrocera Z496Q Inteligente','Imaco', 'Olla Arrocera de metal con capacidad de 1.2lt con garantía de 12 meses', 72, 1918.11);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (163, 'Hervidor Eléctrico 1GS5L Metal','Imaco', 'Hervidor Eléctrico de plástico con capacidad de 1.2lt, base desmontable y apagado automático', 118, 1674.75);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (164, 'Mini Refrigerador 5YXZ8 Inteligente','Imaco', 'Mini Refrigerador unisex para conservar cremas y maquillajes con garantía de 1 año', 175, 1917.95);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (165, 'Freidora QT1XJ PRO','Imaco', 'Freidora de Aire con capacidad de 4lts, material de plástico de alto impacto con temperatura máxima de 230C', 69, 2174.68);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (166, 'Cocina Empotrable 6W3MC Platinium','Imaco', 'Cocina Empotrable con 4 número de quemadores, material de la supercie de vidrio templado y tipo de energía multigas', 64, 176.69 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (167, 'Televisor GTKR5 Negro','Samsung', 'Televisor de 49 pulgadas y tecnología LED, resolución 4K Ultra HD, con conexión bluetooth y 2 entradas de USB', 50, 4510.55);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (168, 'Batidora 4FOX8 Ultra','Imaco', 'Batidora de Pedestal cuyo número de velocidades es 6, capacidad de recipiente 4lt y material de acero inoxidable', 180, 1110.58);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (169, 'Corta Friambres 9J735 100','Imaco', 'Corta Friambres con hoja de acero inoxidable de fácil limpieza', 154, 899.17);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (170, 'Cocineta AYJMO Metal', 'Oster','Cocineta de metal con profundidad de 24.5 cm, ancho de 23.6 cm, alto de 7cm y potencia de 1000W ', 141, 3320.8);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (171, 'Audifonos 8VF5O Inteligente', 'Oster','Audífono Skullcandy Cassette bt y con potencia de 40mW y con salida auxiliar', 189, 3275.0);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (172, 'Parlante 8EVOQ Artisan','Oster', 'Parlante con conexión bluetooth, duración de la bateria de 6 horas al 50 por ciento de capacidad y con entradas para micrófono', 93, 3853.24 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (173, 'Extractor QPFLV Moderno','Oster', 'Extractor de jugos con capacidad de 1.25 kt, número de velocidades 2 y apto para lavavajillas', 149, 2908.87);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (174, 'Mini Refrigerador IRSP8 Ultra','Oster', 'Mini Refrigerador unisex para conservar cremas y maquillajes con garantía de 1 año', 176, 4509.79 );
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (175, 'Arrocera W29PJ 100', 'Oster','Arrocera Multifuncional 10 en 1 con capacidad en litros de 2.2 cuyo material de las tapas es de vidrio refractario', 172, 2031.73);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (176, 'Horno Eléctrico L24KC Inteligente', 'Oster','Horno Eléctrico con capacidad de 30lt, material principal de metal y temperatura máxima de 250C', 178, 2709.89);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (177, 'Masajeador para el Cuero Cabelludo G7QH2 Multifuncional','Oster', 'Masajeador para el Cuero Cabelludo uso en todo tipo de cabello, unisex e individual', 58, 4697.02);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (178, 'Arrocera KIP8D Platinium','Oster', 'Arrocera Multifuncional 10 en 1 con capacidad en litros de 2.2 cuyo material de las tapas es de vidrio refractario', 50, 4229.34);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (179, 'Sartén Eléctrica DP1F7 PRO','Oster', 'Sarten Eléctrica de metal con potencia de 1500 Watts sin garantía', 74, 3732.84);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (180, 'Exprimidor 1Y6AO Metal','Oster', 'Exprimidor de plástico sin cuchillas de potencia de 25 W y peso de 0.275 kg', 55, 3470.43);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (181, 'Aspiradora M2CVU Silencioso','Oster', 'Apiradora Robot con mopa y app, material del cuerpo ABS, sistema de recolección ciclónica, inalámbrico y con capacidad de 60ml para polvo y 300ml para agua', 198, 1104.96);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (182, 'Microondas 6R1IQ Ultra','Oster', 'Microondas con capacidad de 28 Lt., potencia de 900 Watts, cuenta con bloqueo de seguridad y pantalla digital', 187, 3216.69);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (183, 'Audifonos 7XVGA Moderno', 'Samsung', 'Audífono Skullcandy Cassette bt y con potencia de 40mW y con salida auxiliar', 198, 4573.12);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (184, 'Máquina para hacer pan CA5X4 Silencioso', 'Samsung', 'Máquina para hacer pan con potencia de 550W, capacidad de 2lt y material de acero inoxidable', 177, 449.26);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (185, 'Cepillo Eléctrico XN94K Inteligente','Samsung',  'Cepillo Eléctrico Innova Hotbrush duo con potencia de 40W y temperatura áxima de 230C', 61, 857.2);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (186, 'Limpiador Facial UGYLC Silver', 'Samsung', 'Limpiador Facial unisex con cargador para el tratamiento de sonoforesis, 23 000 vibraciones por segundo', 105, 482.1);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (187, 'Secadora 0QCBL Metal','Samsung',  'Secadora con 2 niveles de temperatura, opción de aire frío y iones, número de velocidades 2, potencia de 1875W y longitud de cable de 180cm', 187, 3982.49);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (188, 'Lonchera Eléctrica ZWJ09 Negro', 'Samsung', 'Lonchera eléctrica con diseño moderno. Cuenta con una cubierta redonda, sistema de cierre hermético de 4 clips para mayor seguridad y con contenedor desmontable', 129, 3690.73);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (189, 'Limpiador Facial AG2PD Contemporáneo','Samsung',  'Limpiador Facial unisex con cargador para el tratamiento de sonoforesis, 23 000 vibraciones por segundo', 159, 3415.87);
insert into equipo (IDequipo, nombre,marca, descripcion, stock, precio) values (190, 'Audifonos K21O9 Negro','Samsung',  'Audífono Skullcandy Cassette bt y con potencia de 40mW y con salida auxiliar', 191, 2623.4);

--CONEXION SUCURSAL CON EQUIPO
insert into sucursal_equipo(IDequipo,IDsucursal) values (100,1);
insert into sucursal_equipo(IDequipo,IDsucursal) values (101,1);
insert into sucursal_equipo(IDequipo,IDsucursal) values (102,2);
insert into sucursal_equipo(IDequipo,IDsucursal) values (103,2);
insert into sucursal_equipo(IDequipo,IDsucursal) values (104,3);
insert into sucursal_equipo(IDequipo,IDsucursal) values (105,3);
insert into sucursal_equipo(IDequipo,IDsucursal) values (106,4);
insert into sucursal_equipo(IDequipo,IDsucursal) values (107,4);
insert into sucursal_equipo (IDequipo, IDsucursal) values (108, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (109, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (110, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (111, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (112, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (113, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (114, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (115, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (116, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (117, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (118, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (119, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (120, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (121, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (122, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (123, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (124, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (125, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (126, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (127, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (128, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (129, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (130, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (131, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (132, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (133, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (134, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (135, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (136, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (137, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (138, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (139, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (140, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (141, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (142, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (143, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (144, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (145, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (146, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (147, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (148, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (149, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (150, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (151, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (152, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (153, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (154, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (155, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (156, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (157, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (158, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (159, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (160, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (161, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (162, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (163, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (164, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (165, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (166, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (167, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (168, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (169, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (170, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (171, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (172, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (173, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (174, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (175, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (176, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (177, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (178, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (179, '1');
insert into sucursal_equipo (IDequipo, IDsucursal) values (180, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (181, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (182, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (183, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (184, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (185, '4');
insert into sucursal_equipo (IDequipo, IDsucursal) values (186, '2');
insert into sucursal_equipo (IDequipo, IDsucursal) values (187, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (188, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (189, '3');
insert into sucursal_equipo (IDequipo, IDsucursal) values (190, '3');
--CLIENTE
insert into cliente (DNI, nombre) values ('89357261', 'Betsey Hebblewaite');
insert into cliente (DNI, nombre) values ('87231956', 'Merrie Kyncl');
insert into cliente (DNI, nombre) values ('95316748', 'Bonnee Cheng');
insert into cliente (DNI, nombre) values ('51732489', 'Maurene Degoe');
insert into cliente (DNI, nombre) values ('21593468', 'Stefanie Shorthouse');
insert into cliente (DNI, nombre) values ('95768314', 'Norine Sutworth');
insert into cliente (DNI, nombre) values ('57264983', 'Maitilde Aleksandrev');
insert into cliente (DNI, nombre) values ('94325176', 'Mitchael Frushard');
--CONEXION SUCURSAL CON EQUIPO
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('89357261',1);
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('87231956',1);
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('95316748',2);
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('51732489',2);
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('21593468',3);
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('95768314',3);
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('57264983',4);
insert into sucursal_cliente(DNIcliente,IDsucursal) values ('94325176',4);
------------GASTOS
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (1, 869.35, 'alquiler de local', '1');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (2, 117.35, 'internet', '2');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (3, 781.46, 'luz', '1');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (4, 460.59, 'internet', '4');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (5, 214.91, 'agua', '3');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (6, 626.33, 'internet', '1');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (7, 693.83, 'agua', '3');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (8, 662.45, 'alquiler de local', '3');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (9, 253.52, 'agua', '4');
insert into gastos (IDgastos, monto, concepto, IDsucursal) values (10, 508.62, 'luz', '1');
