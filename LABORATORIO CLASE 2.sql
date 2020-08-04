use laboratorio;
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (6,  'Cinta'	 , 110, 50);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (7,  'Espatula'  , 20 , 22);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (8,  'Fratas'    , 35 , 28);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (9,  'Regrla'    , 20 , 78);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (10, 'Tenaza'    , 12 , 13);

SELECT *  FROM articulos
WHERE Precio > 100; 

SELECT *  FROM articulos
WHERE Precio >= 20 AND precio <= 40; 

SELECT *  FROM articulos
WHERE Precio BETWEEN 40 AND 60; 

SELECT *  FROM articulos
WHERE Precio BETWEEN 40 AND 60; 

SELECT *  FROM articulos
WHERE Precio = 20 AND Stock > 30; 

SELECT *  FROM articulos
WHERE Precio = 12 OR  Precio = 20 OR Precio = 30; 
SELECT *  FROM articulos
WHERE Precio IN (12,20,30); 

SELECT *  FROM articulos
WHERE Precio NOT IN (12,20,30); 

SELECT *  FROM articulos
WHERE Precio <> 12 AND Precio <> 20 AND Precio <> 30; 

SELECT *  FROM articulos
ORDER BY  precio DESC ; 


SELECT ArticuloID,Nombre,Precio,Stock , (Precio * 1.21) as IVA FROM articulos
 ; 
 
 SELECT ArticuloID,Nombre,Precio,Stock, 3 as cuotas,(((33.3*precio)/100) * 1.5) as valor  FROM articulos
 ; 
 
 SELECT *  FROM articulos
WHERE nombre like '%LL%'; 

/*Listar los articulos cuyo nombre contenga la ll*/
SELECT *
FROM articulos
WHERE nombre LIKE '%LL%';

/*Listar las facturas del mes de abril*/
SELECT *
FROM facturas
WHERE MONTH(fecha) = '04';