
CREATE DATABASE WebPersonalDB;
GO

USE WebPersonalDB;
GO


-- =========================
-- TABLA VIAJES
-- =========================

CREATE TABLE Viajes
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Origen VARCHAR(100) NOT NULL,
    Destino VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(MAX) NOT NULL,
    Requisitos VARCHAR(MAX) NOT NULL,
    DuracionAproximada VARCHAR(100) NULL,
    UrlImagen VARCHAR(500) NULL,
    FechaActualizacion DATE NOT NULL DEFAULT GETDATE(),
    Activo BIT NOT NULL DEFAULT 1
);
GO





-- DATOS DE VIAJES



-- =========================
-- TABLA PROYECTOS
-- =========================

CREATE TABLE Proyectos
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    DescripcionCorta VARCHAR(250) NOT NULL,
    DescripcionCompleta VARCHAR(MAX) NOT NULL,
    Tecnologias VARCHAR(MAX) NOT NULL,
    Estado VARCHAR(100) NOT NULL,
    UrlImagen VARCHAR(500) NULL,
    UrlGitHub VARCHAR(500) NULL,
    Destacado BIT NOT NULL DEFAULT 0
);


--agregre esto 
ALTER TABLE Viajes
ADD 
    Precio DECIMAL(10,2) NOT NULL DEFAULT 0,
    Servicio VARCHAR(100) NOT NULL DEFAULT '';
Go

--esto borra todo arranca con id desde 1
TRUNCATE TABLE Viajes;



----ACA INGRESO INFO DE LOS SERVICIOS

INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada, UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES
-- SEMICAMA
('El Talar', 'Posadas', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '14:30:00', 86400, 'Semicama'),

('El Talar', 'Posadas', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '18:35:00', 86400, 'Semicama'),

('El Talar', 'Posadas', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '21:05:00', 86400, 'Semicama'),

-- CAMA
('El Talar', 'Posadas', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '14:30:00', 104000, 'Cama'),

('El Talar', 'Posadas', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '18:35:00', 104000, 'Cama'),

('El Talar', 'Posadas', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '21:05:00', 104000, 'Cama');


INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada, UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES
-- SEMICAMA
('El Talar', 'Puerto Iguazu', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '14:30:00', 110000, 'Semicama'),

('El Talar', 'Puerto Iguazu', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '18:35:00', 110000, 'Semicama'),

('El Talar', 'Puerto Iguazu', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '21:05:00', 110000, 'Semicama'),

-- CAMA
('El Talar', 'Puerto Iguazu', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '14:30:00', 132000, 'Cama'),

('El Talar', 'Puerto Iguazu', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '18:35:00', 132000, 'Cama'),

('El Talar', 'Puerto Iguazu', 'Directo a Misiones', 'Documentacion al dia', '11 hs',
'/imagenes/imagenesEmpresas/RioUruguay.png', GETDATE(), 1, '21:05:00', 132000, 'Cama');


INSERT INTO Viajes
(Origen, Destino, Descripcion, Requisitos, DuracionAproximada, UrlImagen, FechaActualizacion, Activo, HorarioSalida, Precio, Servicio)
VALUES

-- =========================================
-- GUAIREÑA TOUR - VILLARRICA
-- =========================================
('El Talar', 'Villarrica', 'Servicio a Villarrica', 'Documentacion al dia', '18 hs',
'/imagenes/imagenesEmpresas/Guaireñatour.jpg', GETDATE(), 1, '17:45:00', 140000, 'Semicama'),

-- =========================================
-- LA SANTANIANA - VILLARRICA
-- =========================================
('El Talar', 'Villarrica', 'Servicio a Villarrica', 'Documentacion al dia', '18 hs',
'/imagenes/imagenesEmpresas/LaSantaniana.jpg', GETDATE(), 1, '17:45:00', 150000, 'Semicama'),

('El Talar', 'Asuncion', 'Servicio a Villarrica', 'Documentacion al dia', '18 hs',
'/imagenes/imagenesEmpresas/LaSantaniana.jpg', GETDATE(), 1, '17:45:00', 150000, 'Semicama'),
-- =========================================
-- SOL BUS - ASUNCION
-- =========================================
('El Talar', 'Asuncion', 'Servicio a Asuncion', 'Documentacion al dia', '14 hs',
'/imagenes/imagenesEmpresas/SolBus.png', GETDATE(), 1, '15:00:00', 135000, 'Semicama'),

('El Talar', 'Asuncion', 'Servicio a Asuncion', 'Documentacion al dia', '14 hs',
'/imagenes/imagenesEmpresas/SolBus.png', GETDATE(), 1, '16:00:00', 135000, 'Semicama'),

('El Talar', 'Asuncion', 'Servicio a Asuncion', 'Documentacion al dia', '14 hs',
'/imagenes/imagenesEmpresas/SolBus.png', GETDATE(), 1, '20:00:00', 135000, 'Semicama'),

-- =========================================
-- YUTEÑA - VILLARRICA
-- =========================================
('El Talar', 'Villarrica', 'Servicio a Villarrica', 'Documentacion al dia', '18 hs',
'/imagenes/imagenesEmpresas/Yuteña.webp', GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Villarrica', 'Servicio a Villarrica', 'Documentacion al dia', '18 hs',
'/imagenes/imagenesEmpresas/Yuteña.webp', GETDATE(), 1, '17:30:00', 140000, 'Semicama'),

-- =========================================
-- YUTEÑA - YUTY
-- =========================================
('El Talar', 'Yuty', 'Servicio a Yuty', 'Documentacion al dia', '12 hs',
'/imagenes/imagenesEmpresas/Yuteña.webp', GETDATE(), 1, '15:30:00', 140000, 'Semicama'),

('El Talar', 'Yuty', 'Servicio a Yuty', 'Documentacion al dia', '12 hs',
'/imagenes/imagenesEmpresas/Yuteña.webp', GETDATE(), 1, '17:30:00', 140000, 'Semicama');


select *from Viajes