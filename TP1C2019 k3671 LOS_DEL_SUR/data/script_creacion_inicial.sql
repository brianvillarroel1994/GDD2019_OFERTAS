USE GD2C2019
GO

--CREACION DE TABLAS--
IF OBJECT_ID ('LOS_DEL_SUR.TARJETA_USUARIO','U') IS NOT NULL  
DROP TABLE LOS_DEL_SUR.TARJETA_USUARIO;

IF OBJECT_ID ('LOS_DEL_SUR.OFERTA_FACTURA','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.OFERTA_FACTURA;

IF OBJECT_ID('LOS_DEL_SUR.USUARIOXROL','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.USUARIOXROL;

IF OBJECT_ID ('LOS_DEL_SUR.PERMISOS','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.PERMISOS;

IF OBJECT_ID('LOS_DEL_SUR.FUNCIONALIDAD','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.FUNCIONALIDAD; 

IF OBJECT_ID('LOS_DEL_SUR.ROL','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.ROL; 

IF OBJECT_ID('LOS_DEL_SUR.ADMINISTRATIVO','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.ADMINISTRATIVO ;

IF OBJECT_ID ('LOS_DEL_SUR.ENTREGA','U') IS NOT NULL 
DROP TABLE LOS_DEL_SUR.ENTREGA

IF OBJECT_ID('LOS_DEL_SUR.CUPON','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.CUPON;

IF OBJECT_ID('LOS_DEL_SUR.COMPRA','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.COMPRA;

IF OBJECT_ID ('LOS_DEL_SUR.CARGA','U') IS NOT NULL 
DROP TABLE LOS_DEL_SUR.CARGA

IF OBJECT_ID('LOS_DEL_SUR.CLIENTE','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.CLIENTE;

IF OBJECT_ID('LOS_DEL_SUR.FACTURACION','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.FACTURACION;

IF OBJECT_ID('LOS_DEL_SUR.OFERTA','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.OFERTA; 

IF OBJECT_ID('LOS_DEL_SUR.PROVEEDOR','U') IS NOT NULL
DROP TABLE LOS_DEL_SUR.PROVEEDOR;

IF OBJECT_ID('LOS_DEL_SUR.USUARIO','U') IS NOT NULL 
DROP TABLE LOS_DEL_SUR.USUARIO;

IF OBJECT_ID ('LOS_DEL_SUR.DIRECCION','U') IS NOT NULL 
DROP TABLE LOS_DEL_SUR.DIRECCION ;

IF OBJECT_ID ('LOS_DEL_SUR.TARJETA','U') IS NOT NULL 
DROP TABLE LOS_DEL_SUR.TARJETA; 





/* -- Schema -- */
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'LOS_DEL_SUR')
    DROP SCHEMA LOS_DEL_SUR
GO

/* ############### CREACIÓN ############### */

/* -- Schema -- */
CREATE SCHEMA LOS_DEL_SUR AUTHORIZATION gdCupon2019;
GO

/*CRACION DE TABLAS*/

CREATE TABLE LOS_DEL_SUR.FUNCIONALIDAD(
FUNCION_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
FUNCION_NOMBRE NVARCHAR(255) 
);
GO


CREATE TABLE LOS_DEL_SUR.ROL (
ROL_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
ROL_NOMBRE NVARCHAR(255),
ROL_ESTADO NVARCHAR(255)
);
GO

CREATE TABLE LOS_DEL_SUR.PERMISOS (
FUNCION_ID NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.FUNCIONALIDAD(FUNCION_ID),
ROL_ID NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.ROL(ROL_ID)
);
GO


CREATE TABLE LOS_DEL_SUR.USUARIO(
USUARIO_ID NUMERIC (18,0) IDENTITY PRIMARY KEY,
/*USUARIO_USERNAME NVARCHAR(255),
USUARIO_PASSWORD ,
USUARIO_INTENTOS, 
USUARIO_ESTADO  DEFINIR LOS TIPOS DE DATOS */
);
GO


CREATE TABLE LOS_DEL_SUR.ADMINISTRATIVO (
ADMIN_ID NUMERIC(18,0) IDENTITY PRIMARY KEY, 
--ADMIN_NOMBRE,
--ADMIN_APELLIDO,
ADMIN_USUARIO NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.USUARIO(USUARIO_ID)

);
GO

CREATE TABLE LOS_DEL_SUR.USUARIOXROL(
ROL_ID NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.ROL(ROL_ID),
USUARIO_ID NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.USUARIO(USUARIO_ID)
);
GO

CREATE TABLE LOS_DEL_SUR.DIRECCION(
DIRECCION_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
DIRECCION_CALLE NVARCHAR(255),
DIRECCION_PISO NUMERIC(18,0),
DIRECCION_DEPTO NVARCHAR(255),
DIRECCION_COD_POSTAL NUMERIC(18,0) 
);
GO

CREATE TABLE LOS_DEL_SUR.CLIENTE(
CLIE_ID NUMERIC (18,0) IDENTITY PRIMARY KEY,
CLIE_NOMBRE NVARCHAR(255),
CLIE_APELLIDO NVARCHAR(255),
CLIE_DNI NUMERIC (18,0),
CLIE_MAIL NVARCHAR(255),
CLIE_TELEFONO NUMERIC (18,0),
CLIE_DIRECCION NUMERIC (18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.DIRECCION(DIRECCION_ID),
CLIE_CIUDAD NVARCHAR(255) ,
CLIE_FECHA_NAC DATETIME,
CLIE_USUARIO NUMERIC (18,0) FOREIGN KEY REFERENCES LOS_DEL_SUR.USUARIO(USUARIO_ID), --LE QUEITE EL NOT NULL PARA PODER MIGRAR
CLIE_SALDO NUMERIC (18,0),
CLI_DESTINO NUMERIC(18,0)
);
GO

CREATE TABLE LOS_DEL_SUR.PROVEEDOR (
PROVEE_ID NUMERIC (18,0) IDENTITY PRIMARY KEY,
PROVEE_RAZON_SOCIAL NVARCHAR(255),
PROVEE_MAIL NVARCHAR(255),
PROVEE_TELEFONO NUMERIC (18,0),
PROVEE_DIRECCION NUMERIC (18,0) NOT NULL FOREIGN KEY REFERENCES  LOS_DEL_SUR.DIRECCION(DIRECCION_ID) ,
PROVEE_CUIT NVARCHAR(255), 
PROVEE_CIUDAD NVARCHAR(255),
--PROVEE_CONTACTO  QUE ERA CONTACOT?,
PROVEE_USUARIO NUMERIC (18,0) FOREIGN KEY REFERENCES LOS_DEL_SUR.USUARIO(USUARIO_ID), -- LE QUIETE EL NOT NULL PARA PODER MIGRAR
PROVEE_RUBRO NVARCHAR(255)
);
GO

CREATE TABLE LOS_DEL_SUR.FACTURACION (
FACTURA_ID NUMERIC(18,0) IDENTITY PRIMARY KEY, 
FACTURA_FECHA DATETIME,
FACTURA_NUMERO NUMERIC(18,0),
FACTURA_PROVEE NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.PROVEEDOR(PROVEE_ID),
FACTURA_TOTAL NUMERIC(18,0)
--FACTURA_PERIODO  QUE ENTRABA EN PEDRIODO,
);
GO

CREATE TABLE LOS_DEL_SUR.OFERTA( 
OFERTA_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
OFERTA_DESCRIPCION NVARCHAR(255),
OFERTA_FECHA DATETIME,
OFERTA_FECHA_VENC DATETIME,
OFERTA_PRECIO NUMERIC(18,2),
OFERTA_OFERTA_LISTA NUMERIC(18,2),
--OFERTA_PORCENTAJE_DESC,
OFERTA_PROVEEDOR NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.PROVEEDOR(PROVEE_ID),
OFERTA_STOCK NUMERIC(18,0), 
OFERTA_LIMITE_COMPRA NUMERIC(18,0),
OFERTA_CODIGO NVARCHAR(50),  

);
GO

CREATE TABLE LOS_DEL_SUR.OFERTA_FACTURA(
OFERTA_FACT_NUMERO NUMERIC (18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.FACTURACION(FACTURA_ID),
OFERTA_FACT_OFERTA NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.OFERTA(OFERTA_ID),
OFERTA_FACT_CANTIDAD NUMERIC(18,0),
OFERTA_FACT_PRECIO_UNITARIO NUMERIC(18,0),
);
GO

CREATE TABLE LOS_DEL_SUR.COMPRA(
COMPRA_ID NUMERIC(18,0) IDENTITY PRIMARY KEY ,
COMPRA_FECHA DATETIME,
COMPRA_OFERTA NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.OFERTA(OFERTA_ID),
COMPRA_CLIENTE NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.CLIENTE(CLIE_ID)

);
GO

CREATE TABLE LOS_DEL_SUR.CUPON(
CUPON_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
CUPON_CODIGO NUMERIC(18,0),
CUPON_OFERTA NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.OFERTA(OFERTA_ID),
CUPON_PRECIO NUMERIC(18,2),
CUPON_PRECIO_LITA NUMERIC(18,2),
CUPON_CANTIDAD NUMERIC(18,0),
CUPON_VENCIMIENTO DATETIME,
CUPON_COMPRA NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.COMPRA(COMPRA_ID),
--CUPON_ESTADO COMO LO DEFINIMOS?
);
GO

CREATE TABLE LOS_DEL_SUR.ENTREGA (
ENTREGA_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
ENTREGA_CUPON NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.CUPON(CUPON_ID) ,
ENTREGA_FECHA DATETIME,
--ENTREGA_DESITON
ENTREGA_CLIENTE_DESTINO NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.CLIENTE(CLIE_ID) --HACE REFERENCIA A CLIENTE_ID O CLIENTE_DESTINO?
);
GO

CREATE TABLE LOS_DEL_SUR.TARJETA(
TARJETA_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
TARJETA_NUMERO NUMERIC(18,0),
TARJETA_VENCIMIENTO DATETIME,
TARJETA_NOMBRE NVARCHAR(255)
);
GO 

CREATE TABLE LOS_DEL_SUR.TARJETA_USUARIO(
TARJ_USUARIO_TARJETA NUMERIC(18,0) FOREIGN KEY REFERENCES LOS_DEL_SUR.TARJETA(TARJETA_ID),
TARJ_USUARIO_CLIENTE NUMERIC(18,0) FOREIGN KEY REFERENCES LOS_DEL_SUR.CLIENTE(CLIE_ID)
);
GO

CREATE TABLE LOS_DEL_SUR.CARGA(
CARGA_ID NUMERIC(18,0) IDENTITY PRIMARY KEY,
CARGA_FECHA DATETIME,
CARGA_CLIENTE NUMERIC(18,0) NOT NULL FOREIGN KEY REFERENCES  LOS_DEL_SUR.CLIENTE(CLIE_ID),
CARGA_TIPO_PAGO NVARCHAR(255),
CARGA_MONTO NUMERIC(18,0),
CARGA_TARJETA NUMERIC (18,0) NOT NULL FOREIGN KEY REFERENCES LOS_DEL_SUR.TARJETA(TARJETA_ID) 
);
GO

--MIGRACION DE DATOS--


--218 DIRECCIONES DE CLIENTE--
MERGE INTO [LOS_DEL_SUR].[DIRECCION] 
		USING (SELECT DISTINCT CLI_DIRECCION FROM [gd_esquema].Maestra
				GROUP BY CLI_DIRECCION  ) M
		ON ([LOS_DEL_SUR].[DIRECCION].DIRECCION_CALLE=M.CLI_DIRECCION)

		WHEN NOT MATCHED THEN 
		INSERT (DIRECCION_CALLE)
		VALUES( M.CLI_DIRECCION);
GO


--38 DIRECCIONES DE PROVEEDORES 

MERGE INTO [LOS_DEL_SUR].[DIRECCION] 
		USING (SELECT DISTINCT PROVEE_DOM FROM [gd_esquema].Maestra
				GROUP BY PROVEE_DOM  ) M
		ON ([LOS_DEL_SUR].[DIRECCION].DIRECCION_CALLE=M.PROVEE_DOM)

		WHEN NOT MATCHED THEN 
		INSERT (DIRECCION_CALLE)
		VALUES( M.PROVEE_DOM);
GO

--SELECT *FROM  LOS_DEL_SUR.DIRECCION


--218 CLIENTES
MERGE INTO [LOS_DEL_SUR].[CLIENTE]
		USING (SELECT DISTINCT MA.CLI_NOMBRE,MA.CLI_APELLIDO, MA.CLI_DNI,MA.CLI_MAIL,
		MA.CLI_TELEFONO,D.DIRECCION_ID, MA.CLI_CIUDAD,MA.CLI_FECHA_NAC
				FROM [gd_esquema].Maestra MA
				JOIN LOS_DEL_SUR.DIRECCION D ON D.DIRECCION_CALLE= MA.CLI_DIRECCION
				) M
			ON( [LOS_DEL_SUR].[CLIENTE].CLIE_NOMBRE = M.CLI_NOMBRE AND
				[LOS_DEL_SUR].[CLIENTE].CLIE_APELLIDO=M.CLI_APELLIDO AND
				[LOS_DEL_SUR].[CLIENTE].CLIE_DNI=M.CLI_DNI )
			WHEN NOT MATCHED THEN 
			INSERT (CLIE_NOMBRE,CLIE_APELLIDO,CLIE_DNI,CLIE_MAIL,CLIE_TELEFONO, CLIE_DIRECCION, CLIE_CIUDAD,CLIE_FECHA_NAC )
			VALUES (CLI_NOMBRE,CLI_APELLIDO, CLI_DNI,CLI_MAIL,CLI_TELEFONO,DIRECCION_ID, CLI_CIUDAD, CLI_FECHA_NAC );
			GO


--SELECT DISTINCT * FROM LOS_DEL_SUR.CLIENTE ORDER BY CLIE_DIRECCION
--SELECT Provee_Dom FROM gd_esquema.Maestra
--SELECT DISTINCT count (Cli_Dni),Cli_Dni,Cli_Apellido FROM GD_ESQUEMA.MAESTRA GROUP BY  CLI_DNI,Cli_Apellido
--SELECT DISTINCT COUNT (Provee_CUIT),Provee_RS FROM gd_esquema.Maestra GROUP BY Provee_RS


--38 PROVEEDORES

MERGE INTO [LOS_DEL_SUR].[PROVEEDOR]
	USING (SELECT DISTINCT MA.PROVEE_RS, MA.PROVEE_TELEFONO,D.DIRECCION_ID, MA.PROVEE_CUIT, MA.PROVEE_RUBRO  FROM [gd_esquema].Maestra MA 
	JOIN LOS_DEL_SUR.DIRECCION D ON  D.DIRECCION_CALLE=MA.PROVEE_DOM ) M
	ON ([LOS_DEL_SUR].[PROVEEDOR].PROVEE_RAZON_SOCIAL=M.PROVEE_RS AND
		[LOS_DEL_SUR].[PROVEEDOR].PROVEE_TELEFONO=M.PROVEE_TELEFONO AND
		[LOS_DEL_SUR].[PROVEEDOR].PROVEE_CUIT=M.PROVEE_CUIT 
		)
	WHEN NOT MATCHED THEN 
	INSERT(PROVEE_RAZON_SOCIAL, PROVEE_TELEFONO, PROVEE_DIRECCION, PROVEE_CUIT, PROVEE_RUBRO )
	VALUES( M.PROVEE_RS, M.PROVEE_TELEFONO, DIRECCION_ID, M.PROVEE_CUIT, M.PROVEE_RUBRO );
GO


MERGE INTO  [LOS_DEL_SUR].[PROVEEDOR]
	USING (SELECT DISTINCT FROM [gd_esquema].Maestra MA  )
