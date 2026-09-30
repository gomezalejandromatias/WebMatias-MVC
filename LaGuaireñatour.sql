use WebPersonalDB;
go


UPDATE Viajes
SET UrlImagen = '/imagenes/imagenesEmpresas/Guaireñatour.jpg'
WHERE HorarioSalida = '17:45:00'
AND Precio = 140000
AND Servicio = 'Semicama';

INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada,
 UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES

-- =====================================================
-- GUAIREÑATOUR - 17:45 - SEMICAMA - $140.000
-- =====================================================

('El Talar', 'Santa Rita', 'Servicio a Santa Rita',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Tavapy', 'Servicio a Tavapy',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Kilometro 30', 'Servicio a Kilometro 30',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'J.L. Mallorquin', 'Servicio a J.L. Mallorquin',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'J.E. O''Leary', 'Servicio a J.E. O''Leary',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Jose Domingo Ocampos', 'Servicio a Jose Domingo Ocampos',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Campo 9', 'Servicio a Campo 9',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Pastoreo', 'Servicio a Pastoreo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Caaguazu', 'Servicio a Caaguazu',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Cnel Oviedo', 'Servicio a Cnel Oviedo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Yataity', 'Servicio a Yataity',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Villarrica', 'Servicio a Villarrica',
 'Documentacion al dia', '18 hs',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'San Pedro del Parana', 'Servicio a San Pedro del Parana',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Leandro Oviedo', 'Servicio a Leandro Oviedo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Yuty', 'Servicio a Yuty',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Yegros', 'Servicio a Yegros',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Moises Bertoni', 'Servicio a Moises Bertoni',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Maciel', 'Servicio a Maciel',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Caazapa', 'Servicio a Caazapa',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Ñumi', 'Servicio a Ñumi',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'KM 22 San Juan', 'Servicio a KM 22 San Juan',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Gral Eugenio A. Garay', 'Servicio a Gral Eugenio A. Garay',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Jose Fassardi', 'Servicio a Jose Fassardi',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'Gral Morinigo', 'Servicio a Gral Morinigo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

('El Talar', 'San Juan Nep', 'Servicio a San Juan Nep',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '17:45:00', 140000, 'Semicama'),


-- =====================================================
-- YUTEÑA - 15:30 - SEMICAMA - $140.000
-- =====================================================

('El Talar', 'Santa Rita', 'Servicio a Santa Rita',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Tavapy', 'Servicio a Tavapy',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Kilometro 30', 'Servicio a Kilometro 30',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'J.L. Mallorquin', 'Servicio a J.L. Mallorquin',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'J.E. O''Leary', 'Servicio a J.E. O''Leary',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Jose Domingo Ocampos', 'Servicio a Jose Domingo Ocampos',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Campo 9', 'Servicio a Campo 9',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Pastoreo', 'Servicio a Pastoreo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Caaguazu', 'Servicio a Caaguazu',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Cnel Oviedo', 'Servicio a Cnel Oviedo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Yataity', 'Servicio a Yataity',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Villarrica', 'Servicio a Villarrica',
 'Documentacion al dia', '18 hs',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'San Pedro del Parana', 'Servicio a San Pedro del Parana',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Leandro Oviedo', 'Servicio a Leandro Oviedo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Yuty', 'Servicio a Yuty',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Yegros', 'Servicio a Yegros',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Moises Bertoni', 'Servicio a Moises Bertoni',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Maciel', 'Servicio a Maciel',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Caazapa', 'Servicio a Caazapa',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Ñumi', 'Servicio a Ñumi',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'KM 22 San Juan', 'Servicio a KM 22 San Juan',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Gral Eugenio A. Garay', 'Servicio a Gral Eugenio A. Garay',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Jose Fassardi', 'Servicio a Jose Fassardi',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Gral Morinigo', 'Servicio a Gral Morinigo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'San Juan Nep', 'Servicio a San Juan Nep',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:30:00', 140000, 'Semicama'),


-- =====================================================
-- YUTEÑA - 17:30 - SEMICAMA - $140.000
-- =====================================================

('El Talar', 'Santa Rita', 'Servicio a Santa Rita',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Tavapy', 'Servicio a Tavapy',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Kilometro 30', 'Servicio a Kilometro 30',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'J.L. Mallorquin', 'Servicio a J.L. Mallorquin',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'J.E. O''Leary', 'Servicio a J.E. O''Leary',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Jose Domingo Ocampos', 'Servicio a Jose Domingo Ocampos',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Campo 9', 'Servicio a Campo 9',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Pastoreo', 'Servicio a Pastoreo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Caaguazu', 'Servicio a Caaguazu',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Cnel Oviedo', 'Servicio a Cnel Oviedo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Yataity', 'Servicio a Yataity',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Villarrica', 'Servicio a Villarrica',
 'Documentacion al dia', '18 hs',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'San Pedro del Parana', 'Servicio a San Pedro del Parana',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Leandro Oviedo', 'Servicio a Leandro Oviedo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Yuty', 'Servicio a Yuty',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Yegros', 'Servicio a Yegros',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Moises Bertoni', 'Servicio a Moises Bertoni',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Maciel', 'Servicio a Maciel',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Caazapa', 'Servicio a Caazapa',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Ñumi', 'Servicio a Ñumi',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'KM 22 San Juan', 'Servicio a KM 22 San Juan',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Gral Eugenio A. Garay', 'Servicio a Gral Eugenio A. Garay',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Jose Fassardi', 'Servicio a Jose Fassardi',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'Gral Morinigo', 'Servicio a Gral Morinigo',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

('El Talar', 'San Juan Nep', 'Servicio a San Juan Nep',
 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '17:30:00', 140000, 'Semicama');

 ---REGRESO DE GUAIREÑA Y YUTEÑA

 INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada,
 UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES

-- =========================================================
-- GUAIREÑATOUR - REGRESO RECORRIDO 1
-- SAN JUAN NEPOMUCENO → EL TALAR
-- =========================================================

('San Juan Nepomuceno', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '07:00:00', 140000, 'Semicama'),

('Gral Morinigo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '07:20:00', 140000, 'Semicama'),

('Jose Fassardi', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '07:40:00', 140000, 'Semicama'),

('Gral Eugenio A. Garay', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '07:50:00', 140000, 'Semicama'),

('Kilometro 22', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '08:00:00', 140000, 'Semicama'),

('Ñumi', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '08:10:00', 140000, 'Semicama'),

('Villarrica', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:00:00', 140000, 'Semicama'),

('Caazapa', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:20:00', 140000, 'Semicama'),

('Maciel', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:25:00', 140000, 'Semicama'),

('Moises Bertoni', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:35:00', 140000, 'Semicama'),

('Yegros', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:40:00', 140000, 'Semicama'),

('Yuty', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:00:00', 140000, 'Semicama'),

('Leandro Oviedo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:20:00', 140000, 'Semicama'),

('San Pedro del Parana', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:30:00', 140000, 'Semicama'),

('Gral Artigas', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:50:00', 140000, 'Semicama'),

('Cnel Bogado', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '11:10:00', 140000, 'Semicama'),

('Carmen del Parana', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '11:30:00', 140000, 'Semicama'),

('Encarnacion', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '11:50:00', 140000, 'Semicama'),


-- =========================================================
-- YUTEÑA - REGRESO RECORRIDO 1
-- SAN JUAN NEPOMUCENO → EL TALAR
-- =========================================================

('San Juan Nepomuceno', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '07:00:00', 140000, 'Semicama'),

('Gral Morinigo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '07:20:00', 140000, 'Semicama'),

('Jose Fassardi', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '07:40:00', 140000, 'Semicama'),

('Gral Eugenio A. Garay', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '07:50:00', 140000, 'Semicama'),

('Kilometro 22', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '08:00:00', 140000, 'Semicama'),

('Ñumi', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '08:10:00', 140000, 'Semicama'),

('Villarrica', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:00:00', 140000, 'Semicama'),

('Caazapa', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:20:00', 140000, 'Semicama'),

('Maciel', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:25:00', 140000, 'Semicama'),

('Moises Bertoni', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:35:00', 140000, 'Semicama'),

('Yegros', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:40:00', 140000, 'Semicama'),

('Yuty', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:00:00', 140000, 'Semicama'),

('Leandro Oviedo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:20:00', 140000, 'Semicama'),

('San Pedro del Parana', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:30:00', 140000, 'Semicama'),

('Gral Artigas', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:50:00', 140000, 'Semicama'),

('Cnel Bogado', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '11:10:00', 140000, 'Semicama'),

('Carmen del Parana', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '11:30:00', 140000, 'Semicama'),

('Encarnacion', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '11:50:00', 140000, 'Semicama'),


-- =========================================================
-- GUAIREÑATOUR - REGRESO RECORRIDO 2
-- VILLARRICA → SANTA RITA → ENCARNACION → EL TALAR
-- =========================================================

('Villarrica', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:05:00', 140000, 'Semicama'),

('Yataity', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:20:00', 140000, 'Semicama'),

('Cnel Oviedo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '09:30:00', 140000, 'Semicama'),

('Caaguazu', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:00:00', 140000, 'Semicama'),

('Pastoreo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:20:00', 140000, 'Semicama'),

('Campo 9', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:35:00', 140000, 'Semicama'),

('J.D. Ocampos', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '10:50:00', 140000, 'Semicama'),

('J.E. O''Leary', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '11:00:00', 140000, 'Semicama'),

('J.L. Mallorquin', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '11:10:00', 140000, 'Semicama'),

('Kilometro 30', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '11:20:00', 140000, 'Semicama'),

('Santa Rita', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '12:10:00', 140000, 'Semicama'),

('Iruña', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '13:00:00', 140000, 'Semicama'),

('Maria Auxiliadora', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '13:10:00', 140000, 'Semicama'),

('Edelira 28', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '13:50:00', 140000, 'Semicama'),

('Cruce Bella Vista', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '14:25:00', 140000, 'Semicama'),

('Hoenau', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '14:55:00', 140000, 'Semicama'),

('Capitan Miranda', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '15:00:00', 140000, 'Semicama'),

('Encarnacion', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Guaireñatour.jpg',
 GETDATE(), 1, '15:02:00', 140000, 'Semicama'),


-- =========================================================
-- YUTEÑA - REGRESO RECORRIDO 2
-- VILLARRICA → SANTA RITA → ENCARNACION → EL TALAR
-- =========================================================

('Villarrica', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:05:00', 140000, 'Semicama'),

('Yataity', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:20:00', 140000, 'Semicama'),

('Cnel Oviedo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '09:30:00', 140000, 'Semicama'),

('Caaguazu', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:00:00', 140000, 'Semicama'),

('Pastoreo', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:20:00', 140000, 'Semicama'),

('Campo 9', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:35:00', 140000, 'Semicama'),

('J.D. Ocampos', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '10:50:00', 140000, 'Semicama'),

('J.E. O''Leary', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '11:00:00', 140000, 'Semicama'),

('J.L. Mallorquin', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '11:10:00', 140000, 'Semicama'),

('Kilometro 30', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '11:20:00', 140000, 'Semicama'),

('Santa Rita', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '12:10:00', 140000, 'Semicama'),

('Iruña', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '13:00:00', 140000, 'Semicama'),

('Maria Auxiliadora', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '13:10:00', 140000, 'Semicama'),

('Edelira 28', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '13:50:00', 140000, 'Semicama'),

('Cruce Bella Vista', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '14:25:00', 140000, 'Semicama'),

('Hoenau', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '14:55:00', 140000, 'Semicama'),

('Capitan Miranda', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:00:00', 140000, 'Semicama'),

('Encarnacion', 'El Talar',
 'Servicio de regreso a El Talar', 'Documentacion al dia', 'Consultar',
 '/imagenes/imagenesEmpresas/Yuteña.webp',
 GETDATE(), 1, '15:02:00', 140000, 'Semicama');
