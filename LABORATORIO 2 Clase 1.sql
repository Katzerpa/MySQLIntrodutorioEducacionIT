
USE LABORATORIO;
SHOW DATABASES;
CREATE TABLE Agenda (
Contacto integer,
Nombre char,
Domicilio integer,
Telefono varchar(9),
primary key(Contacto)
);
desc Agenda; 

insert into Agenda(contacto,nombre,domicilio,telefono)
values(123,'clase1',1285,'23744132');
insert into Agenda(contacto,nombre,domicilio,telefono)
values(124,'clase2',1286,'23744137');
insert into Agenda(contacto,nombre,domicilio,telefono)
values(125,'clase3',1288,'23784137');

SELECT * FROM Agenda;
DROP TABLE if exists Agenda; 
