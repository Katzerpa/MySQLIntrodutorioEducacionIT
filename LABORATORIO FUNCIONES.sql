##USE laboratorio;
/*
## INCLIR DATOS PARA PODER REALIZAR LABORATORIO COMPLETO
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 1, 1, 1, '2000/10/20', 1500);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 2, 2, 2, '2000/10/18', 3500);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('C', 3, 3, 3, '2008/10/18', 120);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('C', 4, 4, 4, '2008/10/18', 20);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 6, 6, 6, '2006/10/18', 420);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('C', 5, 5, 5, '2000/10/18', 220);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('C', 6, 6, 6, '2006/10/18', 20);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 5, 5, 5, curdate()   , 300);
*/

##1- Obtener la factura con el monto máximo.
/*
SELECT * FROM facturas;
SELECT monto FROM facturas;
SELECT MAX(monto) FROM facturas;



*/
##2- Obtener la factura con el monto mínimo.
/*
SELECT * FROM facturas;
SELECT monto FROM facturas;
SELECT MIN(monto) FROM facturas;
*/

##3- Obtener la factura con el monto mínimo entre los años 2000 y 2008.
/*
SELECT fecha,monto FROM facturas
 WHERE YEAR(Fecha) BETWEEN 2000  AND 2008;
 
SELECT fecha,MIN(monto) FROM facturas
 WHERE YEAR(Fecha) BETWEEN 2000  AND 2008;
 
 
SELECT letra, numero, fecha, monto
FROM facturas
WHERE monto = (
	SELECT MIN(monto) 
	FROM facturas
	WHERE YEAR(Fecha) BETWEEN 2000 AND 2008);
 
*/

#4- Obtener la factura con el monto promedio.
/*
SELECT fecha,monto FROM facturas 
ORDER BY Fecha; 
SELECT fecha,AVG(monto) FROM facturas; 
SELECT fecha,ROUND(AVG(monto),2) FROM facturas; 
*/
##5- Obtener la factura con el monto promedio del año 2006.
/*
SELECT fecha,monto FROM facturas WHERE YEAR(fecha)=2006;
SELECT fecha, AVG(monto) FROM facturas WHERE YEAR(fecha)=2006;
*/

##6- Obtener la cantidad de facturas.
/*
DESC facturas;
SELECT letra,numero FROM facturas;
SELECT COUNT(numero) AS cant_factura FROM facturas;
SELECT COUNT(*) AS cant_factura FROM facturas;
*/

##7- Obtener la cantidad de facturas que tienen un monto entre $35.000 y $40.000.
/*
SELECT fecha,Numero FROM facturas WHERE monto BETWEEN 35000 AND 40000;
SELECT COUNT(Numero) AS cant_factura FROM facturas WHERE monto BETWEEN 35000 AND 40000;
*/

##8- Obtener la cantidad de facturas que hay en cada año.
/*
SELECT fecha,numero FROM facturas
GROUP BY Fecha; 
SELECT count(YEAR(Fecha)) AS cant_Fact, YEAR(Fecha) FROM facturas
GROUP BY YEAR(Fecha); 

SELECT COUNT(*)AS cant_Fact, YEAR(Fecha) FROM facturas
GROUP BY YEAR(Fecha); 

*/


##9- Obtener la cantidad de facturas y el monto promedio en cada año.
/*
SELECT fecha,numero FROM facturas
GROUP BY Fecha; 
SELECT count(YEAR(Fecha)) AS cant_Fact, AVG(monto) AS Monto_Promedio, YEAR(Fecha) FROM facturas
GROUP BY YEAR(Fecha); 
SELECT count(*) AS cant_Fact, AVG(monto) AS Monto_Promedio, YEAR(Fecha) FROM facturas
GROUP BY YEAR(Fecha); 

*/

##10- Obtener la suma del monto y el promedio de las facturas según la letra.
/*
SELECT letra,monto FROM facturas
GROUP BY letra;

SELECT letra,monto, SUM(monto) AS monto_total FROM facturas
GROUP BY letra;

SELECT letra, SUM(monto) AS monto_total, AVG(monto)AS Promedio FROM facturas
GROUP BY letra;

SELECT letra, SUM(monto) AS monto_total, ROUND(AVG(monto),2) AS Promedio FROM facturas
GROUP BY letra;

*/

