USE master;
GO
ALTER DATABASE tiendaxyz SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE tiendaxyz;


CREATE DATABASE tiendaxyz;
USE tiendaxyz;

DROP TABLE IF EXISTS  empleado ;

		
CREATE TABLE  empleado  (
   DNI  INTEGER  NOT NULL,
   password  VARCHAR(50) NOT NULL,
   nombres  VARCHAR(200) NOT NULL,
   apellidos  VARCHAR(200) NOT NULL,
   telefono  INTEGER NOT NULL,
   vale  DECIMAL (8,2) NULL DEFAULT NULL,
   InicioTurno  TIME NULL DEFAULT NULL,
   FinTurno  TIME NULL DEFAULT NULL,
   IDsucursal  INTEGER NOT NULL,
   rol VARCHAR(50) NOT NULL,
  PRIMARY KEY ( DNI )
);

-- ---
-- Table 'factura'
-- 
-- ---

DROP TABLE IF EXISTS  factura ;
		
CREATE TABLE  factura  (
   IDfactura  INTEGER NOT NULL,
   total_precio  DECIMAL (8,2) NOT NULL,
   DNIempleado  INTEGER NOT NULL,
   id_reserva  INTEGER NULL DEFAULT NULL,
   id_sucursal  INTEGER NOT NULL,
   id_cliente  INTEGER NOT NULL,
  PRIMARY KEY ( IDfactura )
);

-- ---
-- Table 'cliente'
-- 
-- ---

DROP TABLE IF EXISTS  cliente ;
		
CREATE TABLE  cliente  (
   DNI  INTEGER NOT NULL,
   nombre  VARCHAR(500) NOT NULL,
  PRIMARY KEY ( DNI )
);

-- ---
-- Table 'gastos'
-- 
-- ---

DROP TABLE IF EXISTS  gastos ;
		
CREATE TABLE  gastos  (
   IDgastos  INTEGER NOT NULL,
   monto  DECIMAL (8,2) NOT NULL,
   concepto  VARCHAR(500) NOT NULL,
   IDsucursal  INTEGER NOT NULL,
  PRIMARY KEY ( IDgastos )
);

-- ---
-- Table 'sucursal'
-- 
-- ---

DROP TABLE IF EXISTS  sucursal ;
		
CREATE TABLE  sucursal  (
   IDsucursal  INTEGER NOT NULL,
   nombre  VARCHAR(100) NOT NULL,
   departamento  VARCHAR(300) NOT NULL,
   distrito  VARCHAR(300) NOT NULL,
   direccion  VARCHAR(300) NOT NULL,
  PRIMARY KEY ( IDsucursal )
);

-- ---
-- Table 'equipo'
-- 
-- ---

DROP TABLE IF EXISTS  equipo ;
		
CREATE TABLE  equipo  (
   IDequipo  INTEGER NOT NULL,
   nombre  VARCHAR(800) NOT NULL,
   marca  VARCHAR(800) NOT NULL,
   descripcion  VARCHAR(800) NOT NULL,
   stock  INTEGER NOT NULL,
   precio  DECIMAL (8,2) NOT NULL,
  PRIMARY KEY ( IDequipo )
);

-- ---
-- Table 'reserva'
-- 
-- ---

DROP TABLE IF EXISTS  reserva ;
		
CREATE TABLE  reserva  (
   id  INTEGER NOT NULL,
   cantidad  INTEGER NOT NULL,
   id_sucursal  INTEGER NOT NULL,
   DNI_cliente  INTEGER NOT NULL,
   DNI_empleado  INTEGER NOT NULL,
   id_equipo  INTEGER NOT NULL,
  PRIMARY KEY ( id )
);
-- ---
-- Table 'sucursal_equipo'
-- 
-- ---

DROP TABLE IF EXISTS  sucursal_equipo ;
		
CREATE TABLE  sucursal_equipo  (
   IDequipo  INTEGER NOT NULL,
   IDsucursal  INTEGER NOT NULL,
  PRIMARY KEY ( IDequipo ,  IDsucursal )
);


-- ---
-- Table 'sucursal_cliente'
-- 
-- ---

DROP TABLE IF EXISTS  sucursal_cliente ;
		
CREATE TABLE  sucursal_cliente  (
   DNIcliente  INTEGER NOT NULL,
   IDsucursal  INTEGER NOT NULL,
  PRIMARY KEY ( DNIcliente ,  IDsucursal )
);



-- ---
-- Table 'factura_equipo'
-- 
-- ---

DROP TABLE IF EXISTS  factura_equipo ;
		
CREATE TABLE  factura_equipo  (
   id_factura  INTEGER NOT NULL,
   id_equipo  INTEGER NOT NULL,
   cantidad  INTEGER NOT NULL,
  PRIMARY KEY ( id_factura ,  id_equipo )
);

-- ---
-- Foreign Keys 
-- ---


ALTER TABLE  factura  ADD FOREIGN KEY (DNIempleado) REFERENCES  empleado  ( DNI );
ALTER TABLE  factura  ADD FOREIGN KEY (id_reserva) REFERENCES  reserva  ( id );
ALTER TABLE  factura  ADD FOREIGN KEY (id_sucursal) REFERENCES  sucursal  ( IDsucursal );
ALTER TABLE  factura  ADD FOREIGN KEY (id_cliente) REFERENCES  cliente  ( DNI );
ALTER TABLE  gastos  ADD FOREIGN KEY (IDsucursal) REFERENCES  sucursal  ( IDsucursal );
ALTER TABLE  sucursal_equipo  ADD FOREIGN KEY (IDequipo) REFERENCES  equipo  ( IDequipo );
ALTER TABLE  empleado  ADD FOREIGN KEY (IDsucursal) REFERENCES  sucursal  ( IDsucursal );
ALTER TABLE  sucursal_equipo  ADD FOREIGN KEY (IDsucursal) REFERENCES  sucursal  ( IDsucursal );
ALTER TABLE  sucursal_cliente  ADD FOREIGN KEY (DNIcliente) REFERENCES  cliente  ( DNI );
ALTER TABLE  sucursal_cliente  ADD FOREIGN KEY (IDsucursal) REFERENCES  sucursal  ( IDsucursal );
ALTER TABLE  reserva  ADD FOREIGN KEY (id_equipo) REFERENCES  equipo  ( IDequipo );
ALTER TABLE  reserva  ADD FOREIGN KEY (DNI_cliente) REFERENCES  cliente  ( DNI );
ALTER TABLE  reserva  ADD FOREIGN KEY (DNI_empleado) REFERENCES  empleado  ( DNI );
ALTER TABLE  reserva  ADD FOREIGN KEY (id_sucursal) REFERENCES  sucursal  ( IDsucursal );
ALTER TABLE  factura_equipo  ADD FOREIGN KEY (id_factura) REFERENCES  factura  ( IDfactura );
ALTER TABLE  factura_equipo  ADD FOREIGN KEY (id_equipo) REFERENCES  equipo  ( IDequipo );