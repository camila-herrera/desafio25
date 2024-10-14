--pasword
--1------------------------------------------------------------------------
CREATE DATABASE camila_herrera_1988;
\l

--2-------------------------------------------------------------------------
\c camila_herrera_1988

--3-------------------------------------------------------------------------
CREATE TABLE clientes (
    mail varchar(50),
    nombre varchar,
    fono varchar(16),
    empresa varchar(50),
    priori SMALLINT
);

\d clientes
SELECT * FROM clientes;

--4--------------------------------------------------------------------------
INSERT INTO clientes (mail, nombre, fono, empresa, priori) VALUES
  ('eje1@cosa.com', 'camila', 986243345, 'contru mh', 1), 
  ('eje2@cosa.com', 'nico', 967263349, 'juegos eirl', 2),
  ('eje3@cosa.com', 'francisco', 967263349, 'brings ltda', 3),
  ('eje4@cosa.com', 'luis', 967263349, 'edificios spa', 4),
  ('eje5@cosa.com', 'carmen', 993917626, 'casino sa.', 5),
  ('eje6@cosa.com', 'maria', 986245761, 'cosmetica sa', 6),
  ('eje7@cosa.com', 'jose', 981245555, 'importadora bella ltda', 7),
  ('eje8@cosa.com', 'jaime', 925843345, 'prevencionistas ltda', 8),
  ('eje9@cosa.com', 'victor', 986248435, 'seguridad sa', 9),
  ('eje10@cosa.com', 'samuel', 986243987, 'bancos spa', 10);


--5------------------------------------------------------------------------
SELECT * FROM clientes ORDER BY priori DESC LIMIT 3;


--6--------------------------------------------------------------------------
SELECT * FROM clientes WHERE priori > 5;

