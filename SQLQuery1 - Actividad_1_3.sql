CREATE DATABASE Actividad1_3
GO

USE Actividad1_3
GO

CREATE TABLE Pedidos(
	ID_PEDIDO int not null Primary key identity(100,1),
	ID_PRODUCTO int not null,
	ID_CLIENTE int not null,
	CANTIDAD int not null,
	FECHA_SOLICITUD date not null,
	FECHA_ENTREGA date,
	COSTO float not null,
	ABONADO varchar(1)
)

GO

CREATE TABLE Productos(
	ID_PRODUCTO int not null primary key,
	NOMBRE_PRODUCTO VARCHAR(50) not null,
	PRECIO_PRODUCTO float not null,
	PRECIO_MAYORISTA float not null,
	CANT_VT_MAYORISTA float not null,
	CANT_DIAS_ELABORACION int not null,
	ID_CATEGORIA int not null
)

GO 

CREATE TABLE Tipo_Categoria(
	ID_CATEGORIA int not null primary key,
	DESCRIPCCION VARCHAR(50) not null
)


GO

CREATE TABLE Clientes(
	ID_CLIENTE int not null primary key,
	APELLIDO varchar(100) not null,
	NOMBRE varchar(100) not null,
	FECHA_NACIMIENTO date null,
	EMAIL varchar(60) null,
	TELEFONO varchar(20) null,
	CELULAR varchar(20) null,
	REGISTRO_WEB varchar(1) null
)

GO

CREATE TABLE Colaboradores(
	ID_LEGAJO int not null primary key,
	APELLIDO varchar(100)not null,
	NOMBRE varchar(100) not null,
	FECHA_NACIMIENTO date null,
	ANIO_INGRESO date not null check(Year(ANIO_INGRESO) > 1990),
	SUELDO_ACTUAL float not null,
	MODALIDAD varchar(10) not null check (MODALIDAD in('FullTime','PartTime'))
)
GO

-- Restricciones 

Alter table Pedidos
add constraint FK_IDPRODUCTO Foreign key(ID_PRODUCTO)
references Productos(ID_PRODUCTO)

GO

Alter table Pedidos
add constraint FK_IDCLIENTE Foreign key(ID_CLIENTE)
references Clientes(ID_CLIENTE)

GO

Alter table Productos
add constraint FK_IDCATEGORIA Foreign key (ID_CATEGORIA)
references Tipo_Categoria(ID_CATEGORIA)

GO

Alter table Productos
add constraint CHK_PRECIO_MAYORISTA check(PRECIO_MAYORISTA < PRECIO_PRODUCTO)


