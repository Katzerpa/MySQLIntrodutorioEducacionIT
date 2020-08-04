#USE CABLETV;
# 1- Un script para incluir en base de datos la estructura para guardar el histórico de planes contratados por el cliente
#con su fecha inicio y fin de contratación.
/*
DESC servicio;
ALTER TABLE servicio
ADD(FechaInicio date,FechaFin date);
*/
#2-Script para llenar la nueva estructura del histórico de planes.
/*
SELECT * FROM servicio;
UPDATE
Servicio as s
INNER JOIN
Cliente as c
ON
s.ClienteID = c.clienteID
SET
s.FechaInicio = C.fechaAfiliacion
WHERE
s.ClienteID = c.clienteID ;

*/

#3-¿Cuántos clientes han tenido más de un plan?
/*
SELECT clienteID, COUNT(planID) FROM servicio where planID > 0
GROUP BY clienteID;
SELECT clienteID, COUNT(Planid) AS cant_Plan
FROM servicio 
WHERE planID > 0
GROUP BY clienteID,planID
HAVING COUNT(planID) > 1;
*/

# 4 Lista de clientes que tienen el plan 1
/*
	SELECT c.clienteID, c.nombre,c.apellido, s.planID
    FROM cliente as c
    left JOIN servicio as s
    ON (S.clienteID = c.clienteID );
   
    SELECT c.clienteID, c.nombre,c.apellido, s.planID
    FROM cliente as c
    left JOIN servicio as s
    ON (S.clienteID = c.clienteID )
    HAVING s.planID = 1;
    */
    
   # 4 Lista de clientes que tienen el plan 2 y pagan con tarjeta de crédito
   /*
   SELECT clienteID, MedioPagoID FROM cliente;
   SELECT * FROM medio_pago;
   DESC medio_pago;
   INSERT INTO medio_pago 
   value (0,'TDD','Tarjeta de Debito'),
		 (0,'TDC','Tarjeta de Credito'),
         (0,'MPG','Mercado Pago');
         
SELECT clienteID,planID FROM servicio 
WHERE planID = 2;

SELECT c.clienteID, c.nombre, c.apellido, s.planID, C.MedioPagoID , mp.NombreMedioPago
FROM cliente as c
LEFT JOIN Servicio as S
ON (S.clienteID = c.clienteID)
LEFT JOIN medio_pago as mp
ON  (mp.MedioPagoID =  c.MedioPagoID);

SELECT c.clienteID, c.nombre, c.apellido, s.planID, C.MedioPagoID , mp.NombreMedioPago
FROM cliente as c
LEFT JOIN Servicio as S
ON (S.clienteID = c.clienteID)
LEFT JOIN medio_pago as mp
ON  (mp.MedioPagoID =  c.MedioPagoID)
HAVING (C.MedioPagoID = 2 AND s.planID = 2);

   */