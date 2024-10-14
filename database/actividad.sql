--me conecto a la base de datos 
CREATE DATABASE prueba1;
\l
\c prueba1

CREATE TABLE estudiantes (
    Nombres varchar(50),
    Notas INTEGER
);

\dt 

ALTER TABLE Estudiantes ADD Apellido varchar(50);

\d Estudiantes 

ALTER TABLE Estudiantes DROP COLUMN Apellido;

-- verificar
\ Estudiantes 

INSERT INTO Estudiantes (Nombres, Notas) VALUES
('juan', 10),
('andres', 9),
('camila', 9),
('francisco', 8);

SELECT * FROM Estudiantes;

-- ingreso 2 estudiantes sin nota
INSERT INTO Estudiantes (Nombres) VALUES ('Miguel'), ('Jesus');

--borrar personas sin notas
DELETE FROM Estudiantes WHERE Notas IS NULL;

--actualizar notas
UPDATE Estudiantes SET Notas = 10 WHERE Notas = (SELECT MIN(Notas) FROM Estudiantes);

--+de 50 caracteres
INSERT INTO Estudiantes (Nombres) VALUES ('estudiantes muy largo que no seohyede insertar');

--
SELECT * FROM Estudiantes WHERE Nombres = 'pedro' AND Notas = 9 OR Nombres ='maria' AND Notas = 6;

SELECT *FROM Estudiantes ORDER BY Notas DESC;

\q  .



