
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

alter table Giros
add
 DniRemitente varchar (100) not null default '';
 EmailRemitente varchar(100) not null default '';
 CedulaRecibe varchar (100) not null default '';
 go

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

('El Talar', 'Asuncion', 'Servicio a Asuncion', 'Documentacion al dia', '18 hs',
'/imagenes/imagenesEmpresas/LaSantaniana.jpg', GETDATE(), 1, '17:45:00', 160000, 'Cama');
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


select *from 

--TABALA GIROS

CREATE TABLE Giros
(
    GiroId INT IDENTITY(1,1) PRIMARY KEY,

    FechaGiro DATETIME NOT NULL DEFAULT GETDATE(),

    NombreRemitente VARCHAR(150) NOT NULL,
    TelefonoRemitente VARCHAR(50) NOT NULL,

    NombreRecibe VARCHAR(150) NOT NULL,
    TelefonoRecibe VARCHAR(50) NOT NULL,

    MontoEnvio DECIMAL(18,2) NOT NULL,
    MontoMonedaExtranjera DECIMAL(18,2) NOT NULL,

    ComisionAgencia DECIMAL(18,2) NOT NULL,
    ComisionSistema DECIMAL(18,2) NOT NULL,

    MontoTotal DECIMAL(18,2) NOT NULL,

    TipoGiro VARCHAR(100) NOT NULL,

    CambioExtranjero DECIMAL(18,4) NOT NULL
);
GO

-- TABLA TIPOGIRI

CREATE TABLE TiposGiro
(
    TiposGiroId INT IDENTITY(1,1) PRIMARY KEY,
    TiposGiro VARCHAR(100) NOT NULL
);

alter table TiposGiro
add
  Alias varchar(200) null  default  '';
 go



---La N indica que el texto es Unicode, para conservar caracteres como tildes, la ñ o letras de otros idiomas.

INSERT INTO TiposGiro (TiposGiro)
VALUES
(N'AGENCIA 3J'),
(N'BANCO CONTINENTAL'),
(N'BANCO FAMILIAR'),
(N'Banco Atlas'),
(N'Banco BASA'),
(N'Banco GNB - Paraguay'),
(N'Banco Itaú Paraguay'),
(N'Banco Nacional de Fomento (BNF)'),
(N'Banco Rio'),
(N'Banco de la Nación Argentina'),
(N'GIROS CLARO'),
(N'GIROS PERSONAL PAY'),
(N'GIROS TIGO MONEY'),
(N'Interfisa Banco'),
(N'Mango - Tu Financiera'),
(N'RB ENTREGAS'),
(N'Solar Banco'),
(N'Sudameris Bank'),
(N'UENO BANK'),
(N'ZETA Banco');