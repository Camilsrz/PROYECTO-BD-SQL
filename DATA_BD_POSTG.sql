INSERT INTO ciudad (ID, nombre_ciudad) VALUES
(1, 'Bogotá'),
(2, 'Cali'),
(3, 'Medellín'),
(4, 'Barranquilla'),
(5, 'Cartagena'),
(6, 'Bucaramanga'),
(7, 'Manizales'),
(8, 'Pereira'),
(9, 'Cúcuta'),
(10, 'Villavicencio'),
(11, 'Ibagué'),
(12, 'Pasto');

INSERT INTO proveedor (N_IDENTIFICACION, nombre, persona_contacto, direccion) VALUES
(900101001, 'Agrocolombia S.A.S.', 'Laura Cárdenas', 'Calle 12 #45-67, Bogotá'),
(900101002, 'Distribuciones Alimentos del Valle', 'Ricardo Torres', 'Carrera 23 #10-45, Cali'),
(900101003, 'Frutos de Colombia Ltda.', 'Ana María Suárez', 'Avenida 5 #30-60, Medellín'),
(900101004, 'Comercializadora del Café', 'Julián Pineda', 'Carrera 8 #11-22, Manizales'),
(900101005, 'Lácteos del Norte', 'Carlos Montoya', 'Calle 50 #22-14, Barranquilla'),
(900101006, 'Granos de la Sabana', 'Paula Ortega', 'Carrera 18 #90-15, Bogotá'),
(900101007, 'Panadería Industrial El Molino', 'Santiago Gómez', 'Calle 33 #44-56, Pereira'),
(900101008, 'Abastecimientos del Sur', 'Valentina Romero', 'Avenida 4 #67-10, Pasto'),
(900101009, 'Verduras y Frutas Selectas', 'Esteban Quintero', 'Carrera 40 #12-20, Bucaramanga'),
(900101010, 'Importadora de Alimentos Andes', 'Marcela Ruiz', 'Calle 18 #8-70, Medellín');

INSERT INTO conductor (IDENTIFICACION, apellidos, nombre, fecha_ingreso, fecha_asignacion, direccion) VALUES
(110011, 'Martínez Rojas', 'Andrés Felipe', '2021-03-12', '2022-01-15', 'Calle 12 #34-56, Bogotá'),
(110012, 'Gómez Tovar', 'Juan Sebastián', '2020-11-05', '2022-03-10', 'Carrera 18 #45-67, Medellín'),
(110013, 'López Sierra', 'Carlos Andrés', '2019-06-25', '2022-06-20', 'Calle 7 #23-14, Cali'),
(110014, 'Pérez Ramírez', 'Jorge Eliecer', '2022-01-02', '2023-01-12', 'Avenida 10 #55-30, Barranquilla'),
(110015, 'Moreno Velásquez', 'José Manuel', '2021-07-10', '2023-02-05', 'Carrera 40 #13-60, Cartagena'),
(110016, 'Reyes Duarte', 'Luis Fernando', '2020-09-18', '2023-04-18', 'Calle 21 #9-88, Manizales'),
(110017, 'Castaño Arias', 'Miguel Ángel', '2018-12-03', '2023-05-22', 'Carrera 25 #8-40, Pereira'),
(110018, 'Rodríguez Mena', 'Esteban David', '2022-06-01', '2023-06-30', 'Calle 44 #11-55, Bucaramanga'),
(110019, 'Jiménez Barrios', 'Óscar Julián', '2019-03-15', '2023-07-14', 'Avenida 3 #20-78, Cúcuta'),
(110020, 'Torres Acosta', 'Felipe Eduardo', '2023-01-10', '2023-08-01', 'Carrera 5 #70-20, Villavicencio');

INSERT INTO cliente (N_IDENTIFICACION, nombre, direccion, ciudad, valor_pdt_vendidos) VALUES
(101011, 'Carlos Rodríguez', 'Calle 45 #12-56', 'Bogotá', 52400),
(101012, 'María Fernanda López', 'Carrera 7 #89-34', 'Medellín', 79300),
(101013, 'Luis Alberto Pérez', 'Avenida 3 #45-78', 'Cali', 47000),
(101014, 'Diana Carolina Gómez', 'Calle 10 #11-22', 'Barranquilla', 28800),
(101015, 'Juan Camilo Torres', 'Carrera 15 #100-99', 'Cartagena', 63700),
(101016, 'Ana Lucía Rincón', 'Calle 8 #17-50', 'Manizales', 42900),
(101017, 'Pedro Javier Cárdenas', 'Carrera 23 #5-12', 'Pereira', 31500),
(101018, 'Sofía Navarro', 'Calle 60 #25-33', 'Bucaramanga', 58100),
(101019, 'Camilo Andrés Vargas', 'Carrera 40 #19-14', 'Cúcuta', 50200),
(101020, 'Paula Andrea Mendoza', 'Calle 13 #44-80', 'Villavicencio', 46600);

INSERT INTO producto (ID_PRODUCTO, nombre, precio) VALUES
(1011, 'Arroz Blanco 1kg', 4500),
(1012, 'Lentejas 500g', 3200),
(1013, 'Fríjol Bola Roja 1kg', 5200),
(1014, 'Aceite Vegetal 900ml', 8300),
(1015, 'Sal Refinada 1kg', 1800),
(1016, 'Azúcar Morena 1kg', 3700),
(1017, 'Pasta Tipo Espagueti 500g', 2800),
(1018, 'Harina de Trigo 1kg', 3500),
(1019, 'Avena en Hojuelas 500g', 3000),
(1020, 'Chocolate de Mesa 250g', 5600);

INSERT INTO ruta (NOMBRE, ciudad_origen, fecha_apertura, costo_ruta, ciudad_destino) VALUES
('Ruta_Bog_Cali', 'Bogotá', '2022-01-15', 850000, 'Cali'),
('Ruta_Bog_Med', 'Bogotá', '2022-03-10', 790000, 'Medellín'),
('Ruta_Bog_Bar', 'Bogotá', '2022-06-20', 920000, 'Barranquilla'),
('Ruta_Bog_Car', 'Bogotá', '2023-01-12', 880000, 'Cartagena'),
('Ruta_Bog_Buc', 'Bogotá', '2023-02-05', 600000, 'Bucaramanga'),
('Ruta_Bog_Man', 'Bogotá', '2023-04-18', 560000, 'Manizales'),
('Ruta_Bog_Per', 'Bogotá', '2023-05-22', 590000, 'Pereira'),
('Ruta_Bog_Cuc', 'Bogotá', '2023-06-30', 700000, 'Cúcuta'),
('Ruta_Bog_Vil', 'Bogotá', '2023-07-14', 530000, 'Villavicencio'),
('Ruta_Bog_Iba', 'Bogotá', '2023-08-01', 510000, 'Ibagué');

INSERT INTO venta (ID_VENTA, N_IDENTIFICACION, fecha_compra, fecha_entrega, valor_total) VALUES
(2011, 101011, '2024-01-05', '2024-01-08', 18500),
(2012, 101012, '2024-01-10', '2024-01-13', 27200),
(2013, 101013, '2024-01-15', '2024-01-18', 34900),
(2014, 101014, '2024-01-20', '2024-01-22', 12200),
(2015, 101015, '2024-01-25', '2024-01-28', 19300),
(2016, 101016, '2024-02-01', '2024-02-03', 41000),
(2017, 101017, '2024-02-05', '2024-02-08', 29600),
(2018, 101018, '2024-02-10', '2024-02-13', 15000),
(2019, 101019, '2024-02-15', '2024-02-18', 32400),
(2020, 101020, '2024-02-20', '2024-02-23', 26700);

INSERT INTO telefonos_cliente (n_identificacion, telefonos) VALUES
(101011, '3104567890'),
(101012, '3115678901'),
(101013, '3126789012'),
(101014, '3137890123'),
(101015, '3148901234'),
(101016, '3159012345'),
(101017, '3160123456'),
(101018, '3171234567'),
(101019, '3182345678'),
(101020, '3193456789');

INSERT INTO telefonos_conductor (identificacion, telefonos) VALUES
(110011, '3204567890'),
(110012, '6012345678'),
(110013, '3109876543'),
(110014, '6041234567'),
(110015, '3001122334'),
(110016, '3012233445'),
(110017, '3023344556'),
(110018, '3124455667'),
(110019, '3145566778'),
(110020, '3166677889');

INSERT INTO telefonos_proveedor (n_identificacion, telefonos) VALUES
(900101001, '3152286930'),
(900101002, '3522489542'),
(900101003, '6015246315'),
(900101004, '6041454567'),
(900101005, '3151655334'),
(900101006, '3014544445'),
(900101007, '4122394556'),
(900101008, '6454545667'),
(900101009, '9455456778'),
(900101010, '8545177889');

INSERT INTO incluye (ID_PRODUCTO, ID_VENTA, cantidad, precio_unitario) VALUES
(1011, 2011, 2, 4500),  
(1015, 2011, 1, 1800),  

(1012, 2012, 2, 3200),  
(1016, 2012, 2, 3700),  

(1013, 2013, 3, 5200),  
(1017, 2013, 2, 2800), 

(1014, 2014, 1, 8300),  
(1019, 2014, 1, 3000), 
(1015, 2014, 1, 1800), 

(1011, 2015, 2, 4500),
(1020, 2015, 1, 5600),

(1018, 2016, 3, 3500),
(1013, 2016, 2, 5200),
(1016, 2016, 2, 3700),

(1012, 2017, 2, 3200),
(1014, 2017, 2, 8300),

(1017, 2018, 2, 2800),
(1019, 2018, 2, 3000),

(1011, 2019, 3, 4500),
(1020, 2019, 2, 5600),
(1015, 2019, 1, 1800),

(1013, 2020, 2, 5200),
(1016, 2020, 2, 3700),
(1017, 2020, 1, 2800);

INSERT INTO suministra (ID_PRODUCTO, N_IDENTIFICACION) VALUES
(1011, 900101001),
(1011, 900101006),
(1012, 900101002),
(1012, 900101008),
(1013, 900101003),
(1013, 900101006),
(1014, 900101004),
(1014, 900101010),
(1015, 900101001),
(1015, 900101007),
(1016, 900101006),
(1016, 900101008),
(1017, 900101007),
(1017, 900101002),
(1018, 900101003),
(1018, 900101004),
(1019, 900101009),
(1019, 900101001),
(1020, 900101010),
(1020, 900101005);
