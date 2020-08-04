#use laboratorio;
# 1-Agregar la relación(FK) entre la tabla Facturas y la tabla a la tabla Clientes.
/*
DESC facturas;
DESC clientes;
ALTER TABLE facturas ADD FOREIGN KEY (clienteID) REFERENCES clientes(clienteID)
ON DELETE CASCADE ON UPDATE CASCADE;
*/
# 2-Agregar la relación(FK) entre la tabla Facturas y la tabla a la tabla Articulos.
/*
DESC facturas;
DESC articulos;
ALTER TABLE facturas ADD FOREIGN KEY (ArticuloID) REFERENCES articulos(ArticuloID)
ON DELETE CASCADE ON UPDATE CASCADE;
*/
#-3_Generar un error de FK en la tabla Facturas.
/*
SELECT clienteID FROM clientes;
SELECT letra, numero FROM facturas
ORDER BY letra, numero DESC;
INSERT INTO  facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 7, 11, 5, curdate()   , 300);
*/
#4- Agregar la columna CPostal a la tabla Clientes.
/*
DESC clientes;
ALTER TABLE clientes
ADD COLUMN CPostal VARCHAR(10) NULL;
*/
# 5- Eliminar la columna CPostal de la tabla Clientes.
/*
DESC clientes;
ALTER TABLE clientes
DROP COLUMN CPostal;
*/