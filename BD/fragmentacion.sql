create database tiendaxyz
use tiendaxyz;
select * from empleado_sucursal0;
select * from equipo_sucursal1;
select * from equipo_sucursal2;
select * from equipo_sucursal3;
select * from equipo_sucursal4;
--FRAGMENTACION
-----------------EMPLEADOS-----------------------------------------------
select * into empleado_sucursal1 from empleado where IDsucursal=1; 
select * into empleado_sucursal2 from SUCURSAL1.tiendaxyz.dbo.empleado where IDsucursal=2;
select * into empleado_sucursal3 from SUCURSAL1.tiendaxyz.dbo.empleado where IDsucursal=3;
select * into empleado_sucursal4 from SUCURSAL1.tiendaxyz.dbo.empleado where IDsucursal=4;
------------------GASTOS-----------------------------------------------
select * into gastos_sucursal1 from gastos where IDsucursal=1; 
select * into gastos_sucursal2 from SUCURSAL1.tiendaxyz.dbo.gastos where IDsucursal=2;
select * into gastos_sucursal3 from SUCURSAL1.tiendaxyz.dbo.gastos where IDsucursal=3;
select * into gastos_sucursal4 from SUCURSAL1.tiendaxyz.dbo.gastos where IDsucursal=4;
------------------RESERVAS-----------------------------------------------
select * into reserva_sucursal1 from reserva where id_sucursal=1; 
select * into reserva_sucursal2 from SUCURSAL1.tiendaxyz.dbo.reserva where id_sucursal=2;
select * into reserva_sucursal3 from SUCURSAL1.tiendaxyz.dbo.reserva where id_sucursal=3;
select * into reserva_sucursal4 from SUCURSAL1.tiendaxyz.dbo.reserva where id_sucursal=4;
------------------FACTURAS-----------------------------------------------
select * into factura_sucursal1 from factura where id_sucursal=1; 
select * into factura_sucursal2 from SUCURSAL1.tiendaxyz.dbo.factura where id_sucursal=2;
select * into factura_sucursal3 from SUCURSAL1.tiendaxyz.dbo.factura where id_sucursal=3;
select * into factura_sucursal4 from SUCURSAL1.tiendaxyz.dbo.factura where id_sucursal=4;
------------------EQUIPO-----------------------------------------------
--equipo_sucursal0
select e.* into equipo_sucursal1
from equipo e
JOIN sucursal_equipo se on e.IDequipo = se.IDequipo
JOIN sucursal s on se.IDsucursal = s.IDsucursal
where s.IDsucursal=1;
--equipo_sucursal1
select e.* into equipo_sucursal2
from SUCURSAL1.tiendaxyz.dbo.equipo e
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal_equipo se on e.IDequipo = se.IDequipo
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal s on se.IDsucursal = s.IDsucursal
where s.IDsucursal=2;
--equipo_sucursal2
select e.* into equipo_sucursal3
from SUCURSAL1.tiendaxyz.dbo.equipo e
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal_equipo se on e.IDequipo = se.IDequipo
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal s on se.IDsucursal = s.IDsucursal
where s.IDsucursal=3;
--equipo_sucursal3
select e.* into equipo_sucursal4
from SUCURSAL1.tiendaxyz.dbo.equipo e
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal_equipo se on e.IDequipo = se.IDequipo
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal s on se.IDsucursal = s.IDsucursal
where s.IDsucursal=4;
------------------CLIENTE-----------------------------------------------
select * from cliente_sucursal0;
select * from cliente_sucursal1;
select * from cliente_sucursal2;
select * from cliente_sucursal3;
--equipo_sucursal0
select c.* into cliente_sucursal1
from cliente c
JOIN sucursal_cliente sc on c.DNI = sc.DNIcliente
JOIN sucursal s on sc.IDsucursal = s.IDsucursal
where s.IDsucursal=1;
--cliente_sucursal1
select c.* into cliente_sucursal2
from SUCURSAL1.tiendaxyz.dbo.cliente c
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal_cliente sc on c.DNI = sc.DNIcliente
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal s on sc.IDsucursal = s.IDsucursal
where s.IDsucursal=2;
--cliente_sucursal2
select c.* into cliente_sucursal3
from SUCURSAL1.tiendaxyz.dbo.cliente c
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal_cliente sc on c.DNI = sc.DNIcliente
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal s on sc.IDsucursal = s.IDsucursal
where s.IDsucursal=3;
--cliente_sucursal3
select c.* into cliente_sucursal4
from SUCURSAL1.tiendaxyz.dbo.cliente c
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal_cliente sc on c.DNI = sc.DNIcliente
JOIN SUCURSAL1.tiendaxyz.dbo.sucursal s on sc.IDsucursal = s.IDsucursal
where s.IDsucursal=4;
----------------------------------------------------
--sucursal1
select * into sucursal_equipo_S1 from SUCURSAL1.tiendaxyz.dbo.sucursal_equipo where IDsucursal=1;
select * into sucursal_cliente_S1 from SUCURSAL1.tiendaxyz.dbo.sucursal_cliente where IDsucursal=1;
select *  into sucursal_sucursal1 from SUCURSAL1.tiendaxyz.dbo.sucursal where IDsucursal=1;
--
select fe.* into factura_equipo_sucursal1
from SUCURSAL1.tiendaxyz.dbo.factura_equipo fe
JOIN SUCURSAL1.tiendaxyz.dbo.factura f on fe.id_factura = f.IDfactura
JOIN SUCURSAL1.tiendaxyz.dbo.equipo s on fe.id_equipo = s.IDequipo
where f.id_sucursal=1;
--sucursal2
select * into sucursal_equipo_S2 from SUCURSAL1.tiendaxyz.dbo.sucursal_equipo where IDsucursal=2;
select * into sucursal_cliente_S2 from SUCURSAL1.tiendaxyz.dbo.sucursal_cliente where IDsucursal=2;
select *  into sucursal_sucursal2 from SUCURSAL1.tiendaxyz.dbo.sucursal where IDsucursal=2;
--
select fe.* into factura_equipo_sucursal2
from SUCURSAL1.tiendaxyz.dbo.factura_equipo fe
JOIN SUCURSAL1.tiendaxyz.dbo.factura f on fe.id_factura = f.IDfactura
JOIN SUCURSAL1.tiendaxyz.dbo.equipo s on fe.id_equipo = s.IDequipo
where f.id_sucursal=2;
--sucursal3
select * into sucursal_equipo_S3 from SUCURSAL1.tiendaxyz.dbo.sucursal_equipo where IDsucursal=3;
select * into sucursal_cliente_S3 from SUCURSAL1.tiendaxyz.dbo.sucursal_cliente where IDsucursal=3;
select *  into sucursal_sucursal3 from SUCURSAL1.tiendaxyz.dbo.sucursal where IDsucursal=3;
--
select fe.* into factura_equipo_sucursal3
from SUCURSAL1.tiendaxyz.dbo.factura_equipo fe
JOIN SUCURSAL1.tiendaxyz.dbo.factura f on fe.id_factura = f.IDfactura
JOIN SUCURSAL1.tiendaxyz.dbo.equipo s on fe.id_equipo = s.IDequipo
where f.id_sucursal=3;
--cursal4
select * into sucursal_equipo_S4 from SUCURSAL1.tiendaxyz.dbo.sucursal_equipo where IDsucursal=4;
select * into sucursal_cliente_S4 from SUCURSAL1.tiendaxyz.dbo.sucursal_cliente where IDsucursal=4;
select *  into sucursal_sucursal4 from SUCURSAL1.tiendaxyz.dbo.sucursal where IDsucursal=4;
--
select fe.* into factura_equipo_sucursal4
from SUCURSAL1.tiendaxyz.dbo.factura_equipo fe
JOIN SUCURSAL1.tiendaxyz.dbo.factura f on fe.id_factura = f.IDfactura
JOIN SUCURSAL1.tiendaxyz.dbo.equipo s on fe.id_equipo = s.IDequipo
where f.id_sucursal=4;
---------------------------------------------------------------------------
