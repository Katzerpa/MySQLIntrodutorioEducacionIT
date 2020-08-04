##USE laboratorio;
## 1- Insertar 5 clientes en la tabla clientes utilizando el insert into de forma simplificada.
/*
DESC clientes;
SELECT * FROM clientes;
INSERT INTO clientes VALUES(6, 'Katiuska','Zerpa','20-45986552-1','Uriburu 1287', NULL);
INSERT INTO clientes VALUES(7, 'Luis','Pino','20-83986552-1','Uriburu 1230', NULL);
INSERT INTO clientes VALUES(8, 'Santiago','Zambrano','20-56398655-1','Junin 1200', NULL);
INSERT INTO clientes VALUES(9, 'Juan','Perez','20-46395655-1','Lavalles 3100', NULL);
INSERT INTO clientes VALUES(10, 'Maria','Perez','20-46333553-1','Lavalles 3160', NULL);
SELECT * FROM clientes WHERE ClienteID > 5;
*/
##2- Actualizar el nombre del cliente 1 a José.
/*
SELECT * FROM clientes WHERE ClienteID = 1;
UPDATE clientes SET nombre = 'José' WHERE ClienteID = 1;
*/
##3-Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
/*
SELECT * FROM clientes WHERE ClienteID = 3;
UPDATE clientes 
   SET nombre = 'José' , 
	   apellido = 'Fuentes',
	   cuit = '20-21053119-0'
 WHERE ClienteID = 3;
*/
##4- Actualizar todos los comentarios NULL a ‘ ‘.
/*
SELECT * FROM clientes WHERE comentarios IS NULL;
SELECT COUNT(comentarios) AS registro_null FROM clientes WHERE comentarios IS NULL;
UPDATE clientes SET comentarios = '' WHERE comentarios IS NULL;
SELECT * FROM clientes WHERE comentarios = '';
SELECT COUNT(comentarios) AS registro_null FROM clientes WHERE  comentarios = '';
*/

##5- Eliminar los clientes con apellido Perez.
/*
SELECT * FROM clientes WHERE apellido = 'Peréz';
SELECT COUNT(apellido) AS Apellidos_Perez FROM clientes WHERE apellido = 'Peréz';
DELETE FROM clientes WHERE apellido = 'Peréz';
*/
##6- Eliminar los clientes con CUIT Terminan en 0.
/*
SELECT * FROM clientes WHERE cuit LIKE '%0';
SELECT COUNT(cuit) AS Registro_cuit_terminal_0 FROM clientes WHERE cuit LIKE '%0';
DELETE FROM clientes WHERE cuit LIKE '%0';
*/
##7- Aumentar un 20% los precios de los artículos con precio menor igual a 50
/*
SELECT * FROM articulos;
SELECT nombre,precio
  FROM articulos
  WHERE precio <=50;

SELECT COUNT(precio)AS registro_precio FROM articulos
  WHERE precio <=50;
  
UPDATE articulos SET precio = precio + (precio * 0.2)  WHERE precio <=50;
*/

##8- Aumentar un 15% los precios de los artículos con precio mayor a 50.
/*
SELECT * FROM articulos;
SELECT nombre,precio
  FROM articulos
  WHERE precio >50;

SELECT COUNT(precio)AS registro_precio FROM articulos
  WHERE precio >50;
  
UPDATE articulos SET precio = precio + (precio * 0.15)  WHERE precio >50;
*/
##9- Bajar un 5% los precios de los artículos con precio mayor a 200.
/*
SELECT * FROM articulos;
SELECT nombre,precio
  FROM articulos
  WHERE precio >200;

SELECT COUNT(precio)AS registro_precio FROM articulos
  WHERE precio >200;
  
UPDATE articulos SET precio = precio - (precio * 0.05)  WHERE precio >200;
*/

##10- Eliminar los artículos con stock menor a 0.
/*
SELECT * FROM articulos;
SELECT nombre,stock FROM articulos WHERE Stock < 0;
SELECT count(stock)AS resgistro_stock FROM articulos WHERE stock < 0;
DELETE FROM articulos WHERE Stock < 0;
*/