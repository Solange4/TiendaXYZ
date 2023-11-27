USE tiendaxyz

DROP PROCEDURE IF EXISTS  BuscarEqui
CREATE PROCEDURE BuscarEqui @IDequipo INT AS
select * from ( select * from equipo_sucursal1 where IDequipo = @IDequipo  
union select * from equipo_sucursal2  where IDequipo = @IDequipo
union select * from equipo_sucursal3  where IDequipo = @IDequipo
union select * from equipo_sucursal4  where IDequipo = @IDequipo) as T
exec BuscarEqui @IDequipo=100

DROP PROCEDURE IF EXISTS  BuscarCliente
CREATE PROCEDURE BuscarCliente @DNI INT AS
select * from ( select * from cliente_sucursal1 where DNI = @DNI
union select * from cliente_sucursal2  where DNI = @DNI
union select * from cliente_sucursal3  where DNI = @DNI
union select * from cliente_sucursal4  where DNI = @DNI) as T
exec BuscarCliente @DNI='89357261'

DROP PROCEDURE IF EXISTS  BuscarEmplea
CREATE PROCEDURE BuscarEmplea @DNI INT AS
select * from ( select * from empleado_sucursal1 where DNI = @DNI
union select * from empleado_sucursal2  where DNI = @DNI
union select * from empleado_sucursal3  where DNI = @DNI
union select * from empleado_sucursal4  where DNI = @DNI) as T
exec BuscarEmplea @DNI='70348190'

DROP PROCEDURE IF EXISTS NumFact
CREATE PROCEDURE NumFact @IDsucursal INT AS
select COUNT(*) AS Cant
from factura
where id_sucursal=@IDsucursal
exec NumFact @IDsucursal = 3

DROP PROCEDURE IF EXISTS Cortes
CREATE PROCEDURE Cortes @DNI INT AS
select InicioTurno, FinTurno
from ( select * from empleado_sucursal1 where DNI = @DNI
union select * from empleado_sucursal2  where DNI = @DNI
union select * from empleado_sucursal3  where DNI = @DNI
union select * from empleado_sucursal4  where DNI = @DNI) as T
exec Cortes @DNI = 70348194

DROP PROCEDURE IF EXISTS Vales
CREATE PROCEDURE Vales @DNI INT AS
select vale
from ( select * from empleado_sucursal1 where DNI = @DNI
union select * from empleado_sucursal2  where DNI = @DNI
union select * from empleado_sucursal3  where DNI = @DNI
union select * from empleado_sucursal4  where DNI = @DNI) as T
exec Vales @DNI = 70348194

DROP PROCEDURE IF EXISTS GastosS
CREATE PROCEDURE GastosS @ID INT AS
select * from gastos_sucursal1 where IDsucursal=@ID
exec GastosS @ID = 1

DROP PROCEDURE IF EXISTS ContarCli
CREATE PROCEDURE ContarCli @ID INT AS
SELECT COUNT(c.DNIcliente) AS nroclientes
FROM sucursal_cliente c where IDsucursal=@ID
exec ContarCli @ID=1

DROP PROCEDURE IF EXISTS InsertarCli_S1
CREATE PROCEDURE InsertarCli_S1 @ID INTEGER, @nombre VARCHAR(500) AS
INSERT INTO cliente (DNI,nombre) VALUES (@ID,@nombre)
INSERT INTO cliente_sucursal1(DNI,nombre) VALUES (@ID,@nombre)
exec InsertarCli_S1 @ID=78544587,@nombre='Maria Guerrero'

DROP PROCEDURE IF EXISTS InsertarCli_S2
CREATE PROCEDURE InsertarCli_S2 @ID INTEGER, @nombre VARCHAR(500) AS
INSERT INTO cliente (DNI,nombre) VALUES (@ID,@nombre)
INSERT INTO cliente_sucursal2(DNI,nombre) VALUES (@ID,@nombre)
exec InsertarCli_S2 @ID=45697852,@nombre='Luisa Villanueva'

DROP PROCEDURE IF EXISTS InsertarCli_S3
CREATE PROCEDURE InsertarCli_S3 @ID INTEGER, @nombre VARCHAR(500) AS
INSERT INTO cliente (DNI,nombre) VALUES (@ID,@nombre)
INSERT INTO cliente_sucursal3(DNI,nombre) VALUES (@ID,@nombre)
exec InsertarCli_S3 @ID=45786254,@nombre='Fernanda Zapana'

DROP PROCEDURE IF EXISTS InsertarCli_S4
CREATE PROCEDURE InsertarCli_S4 @ID INTEGER, @nombre VARCHAR(500) AS
INSERT INTO cliente (DNI,nombre) VALUES (@ID,@nombre)
INSERT INTO cliente_sucursal4(DNI,nombre) VALUES (@ID,@nombre)
exec InsertarCli_S4 @ID=89652312,@nombre='Mario Romero'
