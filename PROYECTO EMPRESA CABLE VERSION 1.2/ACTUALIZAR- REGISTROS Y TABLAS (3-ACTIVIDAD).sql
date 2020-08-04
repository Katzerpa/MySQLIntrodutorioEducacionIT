# UBICAR BASE DE DATOS
#USE cabletv;
# 1-Un script para hacer un descuento de 10% en todos los planes y paquetes disponibles.
/*
#Plan:
SELECT precio FROM  plan;
SELECT COUNT(precio) FROM PLAN;
UPDATE plan  SET precio = precio * 0.90 ;
#Paquete:
SELECT precio FROM  paquete;
SELECT COUNT(precio) FROM Paquete;
UPDATE paquete  SET precio = precio * 0.90 ;
*/

# 2-Un script para incorporar en la base de datos información sobre la fecha de nacimiento del cliente para enviar un correo de felicitación.
/*
DESC cliente;
ALTER TABLE cliente
ADD FechaNac  DATE 
AFTER Apellido;
*/
# 3- Un script para incluir en la base de datos las fechas de nacimiento de los clientes.
/*
DESC cliente;
SELECT nombre,fechanac FROM cliente;
UPDATE cliente SET fechanac = '1976/03/29' where clienteId = 1;
UPDATE cliente SET fechanac = '1979/05/13' where clienteId = 2;
UPDATE cliente SET fechanac = '1990/07/24' where clienteId = 3;
UPDATE cliente SET fechanac = '1974/05/30' where clienteId = 4;
UPDATE cliente SET fechanac = '1980/01/09' where clienteId = 5;

*/
# 4- Un script para las consultas para obtener:
/*
#El promedio de precio de los paquetes disponibles

SELECT precio FROM paquete; 
SELECT AVG(precio) FROM paquete;

#El plan más costoso.

SELECT precio FROM plan;
SELECT MAX(precio) FROM plan;

#Clientes con más de un paquete contratado.
DESC servicio;
# REGISTRE DATOS PARA REALIZAR EL EJERCICO
INSERT INTO servicio(ClienteID,planID,paqueteID)
value (1,1,1),
	  (1,0,2),
      (2,3,0),
      (3,2,1),
      (3,0,2),
      (4,3,1),
      (4,0,2),
      (4,0,3),
      (5,3,1);
      
SELECT * FROM servicio;   

SELECT clienteID, COUNT(Paqueteid) AS cant_paquete FROM servicio WHERE paqueteID > 0
GROUP BY clienteID;

SELECT  COUNT(Paqueteid) AS cant_paquete FROM servicio WHERE paqueteID > 0
GROUP BY clienteID
having cant_paquete = (SELECT COUNT(Paqueteid) AS cant_paquete FROM servicio  WHERE paqueteID > 0 
GROUP BY clienteID ORDER BY cant_paquete  DESC LIMIT  1);


SELECT clienteID, COUNT(Paqueteid) AS cant_paquete 
FROM servicio 
WHERE paqueteID > 0
GROUP BY clienteID
HAVING COUNT(PaqueteID) > 1;

*/