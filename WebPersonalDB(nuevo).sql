

use WebPersonalDB
go

INSERT INTO Viajes
(
    Origen,
    Destino,
    Descripcion,
    Requisitos,
    DuracionAproximada,
    UrlImagen,
    FechaActualizacion,
    Activo,
    HorarioSalida,
    Precio,
    Servicio
)
VALUES

-- =========================================================
-- RÍO URUGUAY - ORIGEN EL TALAR
-- 14:35 / 18:35 / 21:05
-- =========================================================


-- =========================================================
-- PASO DE LOS LIBRES
-- 18:35 NO PASA
-- =========================================================

('El Talar','Paso de los Libres',
 'Servicio de Río Uruguay con destino a Paso de los Libres',
 'Documentación al día','7 hs 25 min aprox.',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',70000,'Semicama'),

('El Talar','Paso de los Libres',
 'Servicio de Río Uruguay con destino a Paso de los Libres',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',70000,'Semicama'),


-- =========================================================
-- YAPEYÚ
-- 18:35 NO PASA
-- =========================================================

('El Talar','Yapeyú',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Yapeyú',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- LA CRUZ
-- 18:35 NO PASA
-- =========================================================

('El Talar','La Cruz',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','La Cruz',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- ALVEAR
-- 18:35 NO PASA
-- =========================================================

('El Talar','Alvear',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Alvear',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- SANTO TOMÉ
-- =========================================================

('El Talar','Santo Tomé',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Santo Tomé',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','Santo Tomé',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- VIRASORO
-- =========================================================

('El Talar','Virasoro',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Virasoro',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','Virasoro',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- POSADAS
-- SEMICAMA $70.000 / CAMA $104.000
-- =========================================================

('El Talar','Posadas',
 'Servicio de Río Uruguay con destino a Posadas',
 'Documentación al día','12 hs 10 min aprox.',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',70000,'Semicama'),

('El Talar','Posadas',
 'Servicio de Río Uruguay con destino a Posadas',
 'Documentación al día','12 hs 10 min aprox.',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',104000,'Cama'),

('El Talar','Posadas',
 'Servicio de Río Uruguay con destino a Posadas',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',70000,'Semicama'),

('El Talar','Posadas',
 'Servicio de Río Uruguay con destino a Posadas',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',104000,'Cama'),

('El Talar','Posadas',
 'Servicio de Río Uruguay con destino a Posadas',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',70000,'Semicama'),

('El Talar','Posadas',
 'Servicio de Río Uruguay con destino a Posadas',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',104000,'Cama'),


-- =========================================================
-- SANTA ANA
-- =========================================================

('El Talar','Santa Ana',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Santa Ana',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','Santa Ana',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- SAN IGNACIO
-- =========================================================

('El Talar','San Ignacio',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','San Ignacio',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','San Ignacio',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- JARDÍN AMÉRICA
-- SEMICAMA $83.900 / CAMA $115.100
-- =========================================================

('El Talar','Jardín América',
 'Servicio de Río Uruguay con destino a Jardín América',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',83900,'Semicama'),

('El Talar','Jardín América',
 'Servicio de Río Uruguay con destino a Jardín América',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',115100,'Cama'),

('El Talar','Jardín América',
 'Servicio de Río Uruguay con destino a Jardín América',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',83900,'Semicama'),

('El Talar','Jardín América',
 'Servicio de Río Uruguay con destino a Jardín América',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',115100,'Cama'),

('El Talar','Jardín América',
 'Servicio de Río Uruguay con destino a Jardín América',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',83900,'Semicama'),

('El Talar','Jardín América',
 'Servicio de Río Uruguay con destino a Jardín América',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',115100,'Cama'),


-- =========================================================
-- CAPIOVÍ
-- =========================================================

('El Talar','Capioví',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Capioví',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','Capioví',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- PUERTO RICO
-- SEMICAMA $124.000 / CAMA $148.600
-- =========================================================

('El Talar','Puerto Rico',
 'Servicio de Río Uruguay con destino a Puerto Rico',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',124000,'Semicama'),

('El Talar','Puerto Rico',
 'Servicio de Río Uruguay con destino a Puerto Rico',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',148600,'Cama'),

('El Talar','Puerto Rico',
 'Servicio de Río Uruguay con destino a Puerto Rico',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',124000,'Semicama'),

('El Talar','Puerto Rico',
 'Servicio de Río Uruguay con destino a Puerto Rico',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',148600,'Cama'),

('El Talar','Puerto Rico',
 'Servicio de Río Uruguay con destino a Puerto Rico',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',124000,'Semicama'),

('El Talar','Puerto Rico',
 'Servicio de Río Uruguay con destino a Puerto Rico',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',148600,'Cama'),


-- =========================================================
-- MONTECARLO
-- =========================================================

('El Talar','Montecarlo',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Montecarlo',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','Montecarlo',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- ELDORADO
-- SEMICAMA $90.000 / CAMA $126.100
-- =========================================================

('El Talar','Eldorado',
 'Servicio de Río Uruguay con destino a Eldorado',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',90000,'Semicama'),

('El Talar','Eldorado',
 'Servicio de Río Uruguay con destino a Eldorado',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',126100,'Cama'),

('El Talar','Eldorado',
 'Servicio de Río Uruguay con destino a Eldorado',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',90000,'Semicama'),

('El Talar','Eldorado',
 'Servicio de Río Uruguay con destino a Eldorado',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',126100,'Cama'),

('El Talar','Eldorado',
 'Servicio de Río Uruguay con destino a Eldorado',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',90000,'Semicama'),

('El Talar','Eldorado',
 'Servicio de Río Uruguay con destino a Eldorado',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',126100,'Cama'),


-- =========================================================
-- ESPERANZA
-- =========================================================

('El Talar','Esperanza',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Esperanza',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','Esperanza',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- WANDA
-- =========================================================

('El Talar','Wanda',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',0,'Semicama'),

('El Talar','Wanda',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',0,'Semicama'),

('El Talar','Wanda',
 'Servicio de Río Uruguay - Precio a confirmar',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',0,'Semicama'),


-- =========================================================
-- PUERTO IGUAZÚ
-- SEMICAMA $90.000 / CAMA $132.000
-- =========================================================

('El Talar','Puerto Iguazú',
 'Servicio de Río Uruguay con destino a Puerto Iguazú',
 'Documentación al día','16 hs 30 min aprox.',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',90000,'Semicama'),

('El Talar','Puerto Iguazú',
 'Servicio de Río Uruguay con destino a Puerto Iguazú',
 'Documentación al día','16 hs 30 min aprox.',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'14:35:00',132000,'Cama'),

('El Talar','Puerto Iguazú',
 'Servicio de Río Uruguay con destino a Puerto Iguazú',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',90000,'Semicama'),

('El Talar','Puerto Iguazú',
 'Servicio de Río Uruguay con destino a Puerto Iguazú',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'18:35:00',132000,'Cama'),

('El Talar','Puerto Iguazú',
 'Servicio de Río Uruguay con destino a Puerto Iguazú',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',90000,'Semicama'),

('El Talar','Puerto Iguazú',
 'Servicio de Río Uruguay con destino a Puerto Iguazú',
 'Documentación al día','Consultar',
 '/imagenes/imagenesEmpresas/RioUruguay.jpg',
 GETDATE(),1,'21:05:00',132000,'Cama');

 UPDATE Viajes
SET UrlImagen = '/imagenes/imagenesEmpresas/RioUruguay.png'
WHERE UrlImagen LIKE '%RioUruguay%';