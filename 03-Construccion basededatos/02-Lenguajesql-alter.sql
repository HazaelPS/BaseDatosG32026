CREATE DATABASE bdejemplo;
GO

USE bdejemplo;
GO

-- ALTER TABLE:

CREATE TABLE alumno(
alumno_id INT NOT NULL,
nombre VARCHAR(20) NOT NULL,
apellido_paterno VARCHAR(15) NOT NULL,
apellido_materno VARCHAR(15)
);

-- Agregar una columna

ALTER TABLE alumno
ADD telefono VARCHAR(10);

-- Agregar varias columnas
ALTER TABLE alumno
ADD curp CHAR (18),
rfc CHAR (13) NOT NULL;

GO

--Modificar un campo y su tipo de dato
ALTER TABLE alumno
ALTER COLUMN
telefono VARCHAR(30);
GO

-- Restricciones
-- PRIMARY KEY
ALTER TABLE alumno
ADD CONSTRAINT pk_alumno
PRIMARY KEY (alumno_id);

-- FOREIGN KEY
CREATE TABLE carrera(
carrera_id INT NOT NULL IDENTITY (1,1),
nombre VARCHAR(30) NOT NULL
);
GO

ALTER TABLE carrera
ADD CONSTRAINT pk_carrera
PRIMARY KEY (carrera_id);
GO

ALTER TABLE alumno
ADD carrera_id INT NOT NULL;
GO

ALTER TABLE alumno
ADD CONSTRAINT fk_alumno_carrera
FOREIGN KEY (carrera_id)
REFERENCES carrera (carrera_id)
ON DELETE CASCADE
ON UPDATE NO ACTION;

-- CHECK
ALTER TABLE alumno
ADD edad INT NOT NULL;

--- Restricción Check
ALTER TABLE alumno
ADD CONSTRAINT ck_alumno_edad
CHECK (edad >= 0);

ALTER TABLE alumno
ADD CONSTRAINT ck_alumno_telefono
CHECK (telefono LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]');

INSERT INTO carrera (nombre)
VALUES ('Tecnologias de Información');

INSERT INTO alumno (alumno_id, nombre, apellido_paterno, apellido_materno, telefono, curp, rfc, carrera_id, edad)
VALUES (1, 'Monico Toribio','Cervantes','Chimbo',
'773-146-2476','sddsddsddssdsdsd','jjjjjjjjjjjjj', 1, 18);

SELECT *
FROM alumno;

DELETE FROM alumno
WHERE alumno_id = 1;

-- Restricción default
ALTER TABLE alumno
ADD activo BIT NOT NULL;

ALTER TABLE alumno
ADD CONSTRAINT df_alumno_activo
DEFAULT 1
FOR activo;

-- UNIQUE
ALTER TABLE carrera
ADD CONSTRAINT uq_carrera_nombre
UNIQUE (nombre);

-- Eliminar Restricciones

-- Restricción FK
ALTER TABLE alumno
DROP CONSTRAINT fk_alumno_carrera;

-- Eliminar PK
ALTER TABLE alumno
DROP CONSTRAINT pk_alumno;

ALTER TABLE carrera
DROP CONSTRAINT pk_carrera;

-- Eliminar Check
ALTER TABLE alumno
DROP CONSTRAINT ck_alumno_edad;

ALTER TABLE alumno
DROP CONSTRAINT ck_alumno_telefono;

-- Eliminar Unique
ALTER TABLE carrera
DROP CONSTRAINT uq_carrera_nombre;

-- Eliminar columna
ALTER TABLE alumno
DROP COLUMN carrera_id;

-- Drop (Elimina objetos de la base de datos completos
-- (tables, views, stored procedures, trigger, bd))

DROP TABLE carrera;
DROP TABLE alumno;

-- Eliminar la base de datos
USE master;
GO

IF DB_ID ('bdejemplo') IS NOT NULL
BEGIN
	DROP DATABASE bdejemplo;
END