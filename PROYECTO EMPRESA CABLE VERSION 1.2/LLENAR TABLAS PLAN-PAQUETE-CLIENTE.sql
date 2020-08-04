/*UBICAR BASE DE DATO*/
 ## USE CABLETV;
 /*BUSCO CAMPOS Y ATRIBIUTOS DE LA TABLA PLAN*/
  ##DESC plan;
  /*LLENADO DE LA TABLA PLAN*/
/*
 INSERT INTO Plan(NombrePlan,Precio) VALUES ('Oro Plus 4K',3010);
 INSERT INTO Plan(NombrePlan,Precio) VALUES ('Plata HD Lite',1860);
 INSERT INTO Plan(NombrePlan,Precio) VALUES ('Oro HD',1593);*/
 
 /*CONSULTO TABLA PLAN*/
##SELECT * FROM PLAN;

/*BUSCO CAMPOS Y ATRIBIUTOS DE LA TABLA PAQUETE*/
  ##DESC Paquete;
  /*LLENADO DE LA TABLA PAQUETE*/
/*
 INSERT INTO Paquete(NombrePaquete,Precio) VALUES ('FOX Premium',440);
 INSERT INTO Paquete(NombrePaquete,Precio) VALUES ('HBO PACK',440);
 INSERT INTO Paquete(NombrePaquete,Precio) VALUES ('FOX Premium HD',440);
 */
 /*CONSULTO TABLA PAQUETE*/
## SELECT * FROM PAQUETE;

/*BUSCO CAMPOS Y ATRIBIUTOS DE LA TABLA CLIENTE*/
##DESC Cliente;
/*
INSERT INTO cliente(DNI,FechaAfiliacion,Nombre,Apellido,Correo,MedioPagoID) 
			values (96010665,'2019/10/18','Luis','Pino','lugepime3@gmail.com',1);
INSERT INTO cliente(DNI,FechaAfiliacion,Nombre,Apellido,Correo,MedioPagoID) 
			values (95010065,'2019/09/25','Pedro','Perez','Pedroperez@gmail.com',3); 
INSERT INTO cliente(DNI,FechaAfiliacion,Nombre,Apellido,Correo,MedioPagoID) 
            values (94010265,'2020/09/18','Maria','Zambrano','mariaz@gmail.com',2);
INSERT INTO cliente(DNI,FechaAfiliacion,Nombre,Apellido,Correo,MedioPagoID) 
             values (96010266,'2020/07/20','Santiago','Pino','santiago@gmail.com',2);
INSERT INTO cliente(DNI,FechaAfiliacion,Nombre,Apellido,Correo,MedioPagoID) 
             values (95333256,'2019/06/13','Carolina','Oropeza','Ana.Oro@gmail.com',1);   
             */
##select * from cliente;