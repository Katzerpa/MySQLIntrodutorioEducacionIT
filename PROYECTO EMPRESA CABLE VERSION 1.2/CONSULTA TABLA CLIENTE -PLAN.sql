/*LISTA CLIENTES AFILIADOS ESTE AÑO*/

SELECT FechaAfiliacion,DNI,nombre,apellido,Correo 
  FROM cliente 
  WHERE YEAR(FechaAfiliacion)= 2020;
  
/*LISTA CLIENTES CUYO APELLIDO COMIENZA POR LA LETRA P EN ORDEN DESCEDENTE*/

SELECT DNI,nombre,apellido,Correo
  FROM Cliente
  WHERE Apellido LIKE 'P%' ORDER BY Apellido DESC ;

/*LISTA DE PLANES DISPONIBLES PRECIOS EN PESO Y DOLARES*/

SELECT NombrePLan,Precio,ROUND((Precio / 89),2) as PrecioUSD
  FROM Plan;


