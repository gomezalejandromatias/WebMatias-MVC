

use WebPersonalDB;
go

UPDATE Viajes
SET UrlImagen = '/imagenes/imagenesEmpresas/LaSantaniana.jpg'
WHERE HorarioSalida = '17:45:00';

INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada,
 UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES

-- =====================================================
-- LA SANTANIANA - EL TALAR → ASUNCION - 17:45
-- =====================================================

('El Talar', 'Mariano Roque Alonso',
 'Servicio a Mariano Roque Alonso',
 'Documentacion al dia', '17 hs 30 min',
 '/imagenes/imagenesEmpresas/SantanianaAsuncion1745.jpg',
 GETDATE(), 1, '17:45:00', 150000, 'Semicama'),

('El Talar', 'Asuncion',
 'Servicio a Asuncion',
 'Documentacion al dia', '18 hs',
 '/imagenes/imagenesEmpresas/SantanianaAsuncion1745.jpg',
 GETDATE(), 1, '17:45:00', 150000, 'Semicama'),

('El Talar', 'Asuncion',
 'Servicio a Asuncion',
 'Documentacion al dia', '18 hs',
 '/imagenes/imagenesEmpresas/SantanianaAsuncion1745.jpg',
 GETDATE(), 1, '17:45:00', 160000, 'Cama'),


-- =====================================================
-- LA SANTANIANA - EL TALAR → VILLARRICA
-- =====================================================

('El Talar', 'San Lorenzo 2',
 'Servicio a San Lorenzo 2',
 'Documentacion al dia', '19 hs 50 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Capiata',
 'Servicio a Capiata',
 'Documentacion al dia', '20 hs 15 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Itaugua',
 'Servicio a Itaugua',
 'Documentacion al dia', '20 hs 30 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Ypacarai',
 'Servicio a Ypacarai',
 'Documentacion al dia', '20 hs 50 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Caacupe',
 'Servicio a Caacupe',
 'Documentacion al dia', '21 hs 15 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Barrero Eusebio Ayala',
 'Servicio a Barrero Eusebio Ayala',
 'Documentacion al dia', '21 hs 30 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Itacurubi de la Cordillera',
 'Servicio a Itacurubi de la Cordillera',
 'Documentacion al dia', '21 hs 45 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'San Jose de los Arroyos',
 'Servicio a San Jose de los Arroyos',
 'Documentacion al dia', '22 hs',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Coronel Oviedo',
 'Servicio a Coronel Oviedo',
 'Documentacion al dia', '22 hs 30 min',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama'),

('El Talar', 'Villarrica',
 'Servicio a Villarrica',
 'Documentacion al dia', '24 hs',
 '/imagenes/imagenesEmpresas/SantanianaVillarrica.jpg',
 GETDATE(), 1, '17:30:00', 150000, 'Semicama');


 INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada,
 UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES

-- =====================================================
-- LA SANTANIANA 18:45
-- HASTA GENERAL DELGADO - SEMICAMA $100.000
-- =====================================================

('El Talar', 'Encarnacion',
 'Servicio a Encarnacion',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 100000, 'Semicama'),

('El Talar', 'Carmen del Parana',
 'Servicio a Carmen del Parana',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 100000, 'Semicama'),

('El Talar', 'Coronel Bogado',
 'Servicio a Coronel Bogado',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 100000, 'Semicama'),

('El Talar', 'General Delgado',
 'Servicio a General Delgado',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 100000, 'Semicama'),


-- =====================================================
-- DESDE SAN PATRICIO HASTA SAN LORENZO 1
-- SEMICAMA $130.000
-- =====================================================

('El Talar', 'San Patricio Misiones',
 'Servicio a San Patricio Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Santa Rosa Misiones',
 'Servicio a Santa Rosa Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'San Ignacio Misiones',
 'Servicio a San Ignacio Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'San Juan Misiones',
 'Servicio a San Juan Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'San Miguel Misiones',
 'Servicio a San Miguel Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Villa Florida',
 'Servicio a Villa Florida',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Caapucu',
 'Servicio a Caapucu',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Valle Apua',
 'Servicio a Valle Apua',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Quiindy',
 'Servicio a Quiindy',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Roque Gonzalez',
 'Servicio a Roque Gonzalez',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Carapegua',
 'Servicio a Carapegua',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Paraguari',
 'Servicio a Paraguari',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Yaguaron',
 'Servicio a Yaguaron',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'Ita',
 'Servicio a Ita',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'J. A. Saldivar',
 'Servicio a J. A. Saldivar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),

('El Talar', 'San Lorenzo 1',
 'Servicio a San Lorenzo 1',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 130000, 'Semicama'),


-- =====================================================
-- ASUNCION - SEMICAMA $150.000
-- =====================================================

('El Talar', 'Asuncion',
 'Servicio a Asuncion',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 150000, 'Semicama'),


-- =====================================================
-- CAMA - TODOS LOS DESTINOS $160.000
-- =====================================================

('El Talar', 'Encarnacion',
 'Servicio a Encarnacion',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Carmen del Parana',
 'Servicio a Carmen del Parana',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Coronel Bogado',
 'Servicio a Coronel Bogado',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'General Delgado',
 'Servicio a General Delgado',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'San Patricio Misiones',
 'Servicio a San Patricio Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Santa Rosa Misiones',
 'Servicio a Santa Rosa Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'San Ignacio Misiones',
 'Servicio a San Ignacio Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'San Juan Misiones',
 'Servicio a San Juan Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'San Miguel Misiones',
 'Servicio a San Miguel Misiones',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Villa Florida',
 'Servicio a Villa Florida',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Caapucu',
 'Servicio a Caapucu',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Valle Apua',
 'Servicio a Valle Apua',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Quiindy',
 'Servicio a Quiindy',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Roque Gonzalez',
 'Servicio a Roque Gonzalez',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Carapegua',
 'Servicio a Carapegua',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Paraguari',
 'Servicio a Paraguari',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Yaguaron',
 'Servicio a Yaguaron',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Ita',
 'Servicio a Ita',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'J. A. Saldivar',
 'Servicio a J. A. Saldivar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'San Lorenzo 1',
 'Servicio a San Lorenzo 1',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama'),

('El Talar', 'Asuncion',
 'Servicio a Asuncion',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '18:45:00', 160000, 'Cama');

 -- SANTANIANA REGRESO 

 INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada,
 UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES

-- ==========================================================
-- LA SANTANIANA - REGRESO A EL TALAR
-- RECORRIDO ASUNCION → ENCARNACION → EL TALAR
-- ==========================================================

-- ASUNCION 09:00 - SEMICAMA 150.000 / CAMA 160.000

('Asuncion', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '09:00:00', 150000, 'Semicama'),

('Asuncion', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '09:00:00', 160000, 'Cama'),


-- SAN LORENZO 1 09:40

('San Lorenzo 1', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '09:40:00', 130000, 'Semicama'),

('San Lorenzo 1', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '09:40:00', 160000, 'Cama'),


-- J. A. SALDIVAR 10:05

('J. A. Saldivar', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:05:00', 130000, 'Semicama'),

('J. A. Saldivar', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:05:00', 160000, 'Cama'),


-- ITA 10:20

('Ita', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:20:00', 130000, 'Semicama'),

('Ita', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:20:00', 160000, 'Cama'),


-- YAGUARON 10:45

('Yaguaron', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:45:00', 130000, 'Semicama'),

('Yaguaron', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:45:00', 160000, 'Cama'),


-- PARAGUARI 11:05

('Paraguari', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:05:00', 130000, 'Semicama'),

('Paraguari', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:05:00', 160000, 'Cama'),


-- CARAPEGUA 11:30

('Carapegua', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:30:00', 130000, 'Semicama'),

('Carapegua', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:30:00', 160000, 'Cama'),


-- ROQUE GONZALEZ 11:50

('Roque Gonzalez', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:50:00', 130000, 'Semicama'),

('Roque Gonzalez', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:50:00', 160000, 'Cama'),


-- QUIINDY 12:05

('Quiindy', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:05:00', 130000, 'Semicama'),

('Quiindy', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:05:00', 160000, 'Cama'),


-- VALLE APU'A 12:15

('Valle Apua', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:15:00', 130000, 'Semicama'),

('Valle Apua', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:15:00', 160000, 'Cama'),


-- CAAPUCU 12:30

('Caapucu', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:30:00', 130000, 'Semicama'),

('Caapucu', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:30:00', 160000, 'Cama'),


-- VILLA FLORIDA 12:50

('Villa Florida', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:50:00', 130000, 'Semicama'),

('Villa Florida', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '12:50:00', 160000, 'Cama'),


-- SAN MIGUEL MISIONES 13:00

('San Miguel Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:00:00', 130000, 'Semicama'),

('San Miguel Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:00:00', 160000, 'Cama'),


-- SAN JUAN MISIONES 13:15

('San Juan Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:15:00', 130000, 'Semicama'),

('San Juan Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:15:00', 160000, 'Cama'),


-- SAN IGNACIO MISIONES 13:40

('San Ignacio Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:40:00', 130000, 'Semicama'),

('San Ignacio Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:40:00', 160000, 'Cama'),


-- SANTA ROSA MISIONES 14:00

('Santa Rosa Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:00:00', 130000, 'Semicama'),

('Santa Rosa Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:00:00', 160000, 'Cama'),


-- SAN PATRICIO MISIONES 14:15

('San Patricio Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:15:00', 130000, 'Semicama'),

('San Patricio Misiones', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:15:00', 160000, 'Cama'),


-- ==========================================================
-- GENERAL DELGADO EN ADELANTE - SEMICAMA $100.000
-- CAMA $160.000
-- ==========================================================

('General Delgado', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:35:00', 100000, 'Semicama'),

('General Delgado', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:35:00', 160000, 'Cama'),

('Coronel Bogado', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:55:00', 100000, 'Semicama'),

('Coronel Bogado', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '14:55:00', 160000, 'Cama'),

('Carmen del Parana', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '15:15:00', 100000, 'Semicama'),

('Carmen del Parana', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '15:15:00', 160000, 'Cama'),

('Encarnacion', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '15:40:00', 100000, 'Semicama'),

('Encarnacion', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '15:40:00', 160000, 'Cama'),

('Gualeguaychu', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '03:10:00', 100000, 'Semicama'),

('Gualeguaychu', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '03:10:00', 160000, 'Cama'),


-- ==========================================================
-- SEGUNDO RECORRIDO LA SANTANIANA → EL TALAR
-- HORARIOS VISIBLES EN LA SEGUNDA FOTO
-- SEMICAMA $150.000 / CAMA $160.000
-- ==========================================================

('Villarrica', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '09:30:00', 150000, 'Semicama'),

('Villarrica', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '09:30:00', 160000, 'Cama'),

('Coronel Oviedo', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:00:00', 150000, 'Semicama'),

('Coronel Oviedo', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:00:00', 160000, 'Cama'),

('San Jose de los Arroyos', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:15:00', 150000, 'Semicama'),

('San Jose de los Arroyos', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:15:00', 160000, 'Cama'),

('Itacurubi de la Cordillera', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:20:00', 150000, 'Semicama'),

('Itacurubi de la Cordillera', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:20:00', 160000, 'Cama'),

('Barrero Eusebio Ayala', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:25:00', 150000, 'Semicama'),

('Barrero Eusebio Ayala', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:25:00', 160000, 'Cama'),

('Caacupe', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:40:00', 150000, 'Semicama'),

('Caacupe', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '10:40:00', 160000, 'Cama'),

('Ypacarai', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:00:00', 150000, 'Semicama'),

('Ypacarai', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:00:00', 160000, 'Cama'),

('Itaugua', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:10:00', 150000, 'Semicama'),

('Itaugua', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:10:00', 160000, 'Cama'),

('Capiata', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:20:00', 150000, 'Semicama'),

('Capiata', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:20:00', 160000, 'Cama'),

('San Lorenzo 2', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:30:00', 150000, 'Semicama'),

('San Lorenzo 2', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '11:30:00', 160000, 'Cama'),

('Asuncion', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:00:00', 150000, 'Semicama'),

('Asuncion', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:00:00', 160000, 'Cama'),

('Desvio Luque', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:20:00', 150000, 'Semicama'),

('Desvio Luque', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:20:00', 160000, 'Cama'),

('Loma Pyta', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:30:00', 150000, 'Semicama'),

('Loma Pyta', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:30:00', 160000, 'Cama'),

('Mariano Roque Alonso', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:40:00', 150000, 'Semicama'),

('Mariano Roque Alonso', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:40:00', 160000, 'Cama'),

('Rotonda Remanso', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:50:00', 150000, 'Semicama'),

('Rotonda Remanso', 'El Talar',
 'Servicio de regreso a El Talar',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/LaSantaniana.jpg',
 GETDATE(), 1, '13:50:00', 160000, 'Cama');