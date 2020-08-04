#Use laboratorio;
#1-Informar nombre y apellido de los clientes que han realizado compras.
/*
SELECT letra,numero, ClienteID FROM facturas 
ORDER BY ClienteID; 

SELECT f.letra,f.numero, f.ClienteID, c.nombre, c.apellido
FROM facturas as f
INNER JOIN clientes as c ON c.ClienteID = f.ClienteID
ORDER BY f.ClienteID;

SELECT facturas.letra,facturas.numero, facturas.ClienteID , clientes.nombre, clientes.apellido
FROM facturas,clientes 
WHERE clientes.ClienteID = facturas.ClienteID
ORDER BY ClienteID; 

SELECT f.letra,f.numero, f.ClienteID, c.nombre, c.apellido
FROM facturas as f
LEFT JOIN clientes as c ON c.ClienteID = f.ClienteID
ORDER BY f.ClienteID;

*/

# 2- Informar nombre y apellido de los clientes que tienen facturas con monto mayor a 100 pesos.
/*

SELECT letra,numero, ClienteID, monto FROM facturas 
WHERE monto > 100
ORDER BY ClienteID; 

SELECT f.letra,f.numero, f.ClienteID, c.nombre, c.apellido, f.monto
FROM facturas as f
INNER JOIN clientes as c ON c.ClienteID = f.ClienteID
WHERE f.monto > 100
ORDER BY f.ClienteID;
*/

#3- Informar letra y número de factura, el nombre y el precio de los artículos que se han v
/*
SELECT letra,numero, ArticuloID FROM facturas 
ORDER BY letra,numero; 
SELECT articuloID, nombre, Precio FROM articulos;

SELECT f.letra,f.numero,f.articuloID, a.nombre,a.precio
FROM  facturas AS f
INNER JOIN articulos as a
ON  A.articuloID = f.articuloID
ORDER BY f.letra,f.numero,f.articuloID ;
*/

# 4- Informar el precio máximo y mínimo de los artículos facturados con letra A.
/*
SELECT letra,numero, ArticuloID FROM facturas 
WHERE letra = 'A'
ORDER BY numero;

SELECT f.letra,f.numero,f.articuloID, a.nombre,a.precio
FROM  facturas AS f
INNER JOIN articulos as a
ON  A.articuloID = f.articuloID
WHERE  f.letra = 'A'
ORDER BY f.letra,f.numero,f.articuloID ;

SELECT f.letra,f.numero,min(a.precio) AS MIN, mAX(a.precio) AS MAX
FROM  facturas AS f
INNER JOIN articulos as a
ON  A.articuloID = f.articuloID
WHERE  f.letra = 'A' ;
*/
#5- Informar la cantidad de facturas, nombre y apellido de cada cliente.
/*
SELECT COUNT(*) as Cant_fact,clienteID FROM facturas
GROUP BY clienteID;

SELECT COUNT(*) AS Cant_fact,f.clienteID,c.nombre,c.apellido
FROM facturas as f
INNER JOIN clientes AS c
ON c.clienteID = f.clienteID
GROUP BY f.clienteID;
*/

#6-Informar el promedio de compra de venta para los artículo con precio >10.
/*
SELECT f.letra,f.numero,f.articuloID, a.nombre,a.precio,f.monto
FROM  facturas AS f
INNER JOIN articulos as a
ON  A.articuloID = f.articuloID
WHERE a.precio > 10
ORDER BY f.articuloID ;

SELECT f.letra,f.numero,f.articuloID, a.nombre,a.precio,avg(f.monto) AS Vta_Prom
FROM  facturas AS f
INNER JOIN articulos as a
ON  A.articuloID = f.articuloID
WHERE a.precio > 10
GROUP BY f.articuloID ;
*/
#7- Informar nombre y apellido y total de monto de facturas por año para cada clientes.
/*
 SELECT year(fecha),ClienteID,SUM(monto) FROM facturas
 GROUP BY year(fecha) ASC,ClienteID ASC ;
 
 SELECT year(f.fecha),f.ClienteID,c.nombre,c.apellido,SUM(f.monto) 
 FROM facturas as f
 INNER JOIN clientes as c
 ON C.ClienteID = f.ClienteID
 GROUP BY year(f.fecha) ASC,f.ClienteID ASC ;
 */
 #8- Informar que facturas emitidas al cliente Diaz.
 /*
 SELECT ClienteID,nombre,apellido FROM clientes 
 WHERE apellido = 'Diaz';
 
 SELECT COUNT(*) AS Cant_f,clienteID FROM facturas
 WHERE clienteID = '1';
 
 SELECT COUNT(*) AS Cant_f,f.clienteID, c.apellido
 FROM facturas AS f
 INNER JOIN clientes AS c
 ON c.Apellido = 'Diaz' AND c.clienteID = f.clienteID; 
 */
 
 #9- Informar el total vendido por artículo.
 /*
 SELECT articuloID, SUM(monto)AS m_total FROM facturas
 GROUP BY articuloID;
 
 SELECT f.articuloID, a.nombre, SUM(f.monto)AS m_total
 FROM facturas AS f
 INNER JOIN articulos AS a
 ON a.articuloID = f.articuloID
 GROUP BY f.articuloID;
 */
 # 10- Informar nombre y apellido del cliente que más ha comprado.
 SELECT COUNT(*) as Cant_fac, clienteID,SUM(monto) AS MON FROM facturas
 GROUP BY ClienteID
; 

SELECT CLIENTEID,SUM(MONTO)AS TOTAL FROM FACTURAS  group by CLIENTEID ORDER BY TOTAL DESC ;


WITH
  cte1 AS (SELECT CLIENTEID, SUM(MONTO) AS MONTO FROM FACTURAS  group by CLIENTEID ORDER BY MONTO DESC),
  cte2 AS (SELECT CLIENTEID, SUM(MONTO) AS MONTO FROM FACTURAS  group by CLIENTEID ORDER BY MONTO DESC)
SELECT cte1.CLIENTEID,max(cte1.MONTO) FROM cte1 JOIN cte2
WHERE cte1.CLIENTEID = cte2.CLIENTEID;



SELECT SUM(MONTO)AS TOTAL FROM FACTURAS  group by CLIENTEID ORDER BY TOTAL DESC ;


  

 
 