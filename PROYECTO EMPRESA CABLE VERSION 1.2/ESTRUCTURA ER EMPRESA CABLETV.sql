/*CREAR BASE DE DATOS CABLETV */
/*CREATE DATABASE CABLETV charset utf8 ;
SHOW DATABASES ;*/

/*UBICAR BASE DE DATO*/
  ##USE CABLETV;

/*CREAR TABLAS BASE DE DATOS */
/* TABLA PLAN */
/*CREATE TABLE Plan(
PlanID INT AUTO_INCREMENT,
NombrePlan VARCHAR(60),
Precio FLOAT,
PRIMARY KEY(PlanID)
);
DESC Plan; */

/* TABLA PAQUETE */
/*CREATE TABLE Paquete(
PaqueteID INT AUTO_INCREMENT,
NombrePaquete VARCHAR(60),
Precio FLOAT,
PRIMARY KEY (PaqueteID));
DESC Paquete;*/

/*TABLA SERVICIO*/
/*
CREATE TABLE Servicio(
ServicioID INT AUTO_INCREMENT,
ClienteID INT,
PlanID INT,
PaqueteID INT,
PRIMARY KEY (ServicioID));
DESC Servicio;
*/
/*TABLA FACTURA*/
/*CREATE TABLE Factura(
FacturaID INT AUTO_INCREMENT,
ServicioID INT NOT NULL,
Letra VARCHAR(1) NOT NULL,
Numero INT NOT NULL,
FechaVencimiento DATE,
PRIMARY KEY (FacturaID));
DESC Factura;*/

/*TABLA CLIENTE*/
/*
CREATE TABLE Cliente( 
ClienteID INT AUTO_INCREMENT,
DNI INT(8) NOT NULL,
FechaAfiliacion DATE,
Nombre VARCHAR(40) NOT NULL,
Apellido VARCHAR(40)NOT NULL,
Correo VARCHAR(60),
MedioPagoID INT NOT NULL,
PRIMARY KEY (ClienteID));
DESC Cliente;
*/

/*TABLA MEDIO_PAGO*/

/*CREATE TABLE Medio_Pago(
MedioPagoID INT AUTO_INCREMENT,
NombreMedioPago VARCHAR (60)NOT NULL,
DetalleMedioPago VARCHAR (60),
PRIMARY KEY (MedioPagoID));
DESC Medio_Pago;*/

/*TABLA PAGO*/

/*CREATE TABLE Pago(
PagoID INT AUTO_INCREMENT,
MedioPagoID INT NOT NULL,
FacturaID INT NOT NULL,
Monto FLOAT,
FechaPago DATE,
PRIMARY KEY(PagoID));
DESC Pago;*/
