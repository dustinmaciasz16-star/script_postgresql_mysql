DROP TABLE IF EXISTS estudiante;

CREATE TABLE estudiante(
    id_estudiante INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    curso VARCHAR(50),
    fecha_registro VARCHAR(10)
);

alter table estudiante add column correo VARCHAR(100);

INSERT INTO estudiante VALUES
(1, 'Dustin', 'Macias', 18, 'Base de datos', '2026/01/10', 'dustin@gmail.com'),
(2, 'Daniel', 'Figueroa', 19, 'Programacion orientada objeto', '2026/01/24', 'daniel@gmail.com'),
(3, 'Snaider', 'Paul', 17, 'Base de datos', '2026/02/05', 'snaider@gmail.com'),
(4, 'Alan', 'Macias', 20, 'React', '2026/02/12', 'alan.macias@gmail.com'),
(5, 'Alan', 'Malan', 21, 'React', '2026/02/18', 'alan.malan@gmail.com'),
(6, 'Leo', 'Hernandez', 18, 'Programacion orientada objeto', '2026/03/01', 'leo@gmail.com'),
(7, 'Alex', 'Cañizares', 22, 'React', '2026/03/12', 'alex@gmail.com'),
(8, 'Ana', 'Macias', 19, 'Programacion orientada objeto', '2026/04/08', 'ana@gmail.com'),
(9, 'Jerson', 'Crus', 23, 'Base de datos', '2026/04/23', 'jerson@gmail.com'),
(10, 'Angela', 'Chumo', 17, 'React', '2026/05/19', 'angela@gmail.com'),
(11, 'Ariana', 'Manrique', 20, 'Base de datos', '2026/06/11', 'ariana@gmail.com'),
(12, 'Valentima', 'Manrique', 21, 'Programacion orientada objeto', '2026/06/11', 'valentima@gmail.com'),
(13, 'Mia', 'Kalifa', 18, 'React', '2026/07/10', 'mia@gmail.com'),
(14, 'Mariana', 'Avilez', 24, 'Base de datos', '2026/07/06', 'mariana@gmail.com'),
(15, 'Stefania', 'Zambrano', 22, 'React', '2026/07/19', 'stefania@gmail.com');

/*consulta select*/
select * from estudiante;
select nombre, curso from estudiante;
select * from estudiante where edad > 18;
select * from estudiante where edad between 18 and 25;
select * from estudiante where curso like '%Base%';
select * from estudiante where fecha_registro > '2026/03/01';
select * from estudiante where fecha_registro between '2026/01/01' and '2026/04/30';
select * from estudiante where correo = 'stefania@gmail.com';

/*update*/
update estudiante set curso = 'React' where nombre = 'Dustin';
update estudiante set edad = '19' where nombre = 'Snaider';
update estudiante set fecha_registro = '2026/03/15' where id_estudiante = 8;
update estudiante set nombre = 'Alex', edad = 20 where id_estudiante = 5;
update estudiante set apellido = 'Alvarado' where nombre = 'Snaider';
update estudiante set correo = 'stefania6787678@gmail.com' where correo = 'stefania@gmail.com';

/*Delete*/
delete from estudiante where id_estudiante = 4;
delete from estudiante where curso like '%Programacion%';
delete from estudiante where edad between 17 and 19;
delete from estudiante where nombre = 'Alex' and apellido = 'Cañizares';
delete from estudiante where fecha_registro = '2026/07/06';

/*consultas con fecha*/
select * from estudiante where fecha_registro > '2026/02/01';
select * from estudiante where fecha_registro < '2026/05/01';
select * from estudiante where fecha_registro < '2026/05/01';
select * from estudiante where fecha_registro = '2026/03/15';
select * from estudiante where curso like '%Programacion%' and fecha_registro > '2026/01/01';