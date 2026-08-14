
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

INSERT INTO Viajes
(
    Origen,
    Destino,
    Descripcion,
    Requisitos,
    DuracionAproximada,
    UrlImagen,
    FechaActualizacion,
    Activo
)
VALUES
(
    'El Talar',
    'Posadas',
    'Servicio de larga distancia desde El Talar hasta Posadas.',
    'Presentarse 30 minutos antes con DNI y pasaje.',
    '14 horas',
    NULL,
    GETDATE(),
    1
);

GO


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
