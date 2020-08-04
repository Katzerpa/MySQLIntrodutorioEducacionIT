
/*CREAR BASE DE DATOS LABORATOIO*/
/*CREATE DATABASE LABORATORIO charset utf8 ;

SHOW DATABASES ;
*/
/* CREAR TABLA FACTURAS*/
/*
use  laboratorio;
create table Facturas (
Letra char,
Numero int,
ClienteID integer,
ArticuloID integer,
Fecha date,
Monto double,
primary key(Letra,Numero)
);
describe  Facturas;*/

/* CREAR TABLA ARTICULOS*/
/*
create table Articulos(
ArticuloID integer,
Nombre varchar(50),
Precio double,
Stock integer,
primary key(ArticuloID)
);

desc Articulos;*/

/*CREAR TABLA CLIENTES*/
/*
create table Clientes(
ClienteID integer,
Nombre varchar(50),
Apellido varchar(50),
Cuit char(16),
Direccion varchar(50),
Comentarios varchar(50),
primary key(ClienteID)
);
desc Clientes;   */
;
/* INSENTAR REGISTROS FACTURA*/
/*
use laboratorio;
desc Facturas;
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 1, 1, 1, '2011/10/18', 500);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 2, 2, 2, '2011/10/18', 2500);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 3, 3, 3, '2011/10/18', 320);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 4, 4, 4, '2011/10/18', 120);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 5, 5, 5, curdate()   , 300);

select * from facturas;
*/

/* INSERTAR CLIENTES*/
/*
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (1, 'Agustin' , 'Diaz'  , '20-35987452-0', 'Lima 458'    , NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (2, 'Angela'  , 'Lopez' , '20-37987854-0', 'Peru 32'     , NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (3, 'Cristian', 'Fraga' , '20-36887498-0', 'Chile 6985'  , NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (4, 'Sol'     , 'Cabral', '20-25982495-0', 'Lavalle 1201', NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (5, 'Ezequiel', 'Perez' , '20-21987111-0', 'Uruguay 25'  , NULL);


select * from Clientes;
*/
/* INSERTAR ARTICULO*/
/*
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (1, 'Destornillador', 25, 50);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (2, 'Pinza'         , 35, 22);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (3, 'Martillo'      , 15, 28);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (4, 'Maza'          , 35, 18);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (5, 'Balde'         , 55, 13);

select * from articulos;
*/