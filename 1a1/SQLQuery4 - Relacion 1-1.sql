-- Actividad 1.2 Laboratorio III

Create Database Relacion_1_1
Go

Use Relacion_1_1
Go

Create Table Cliente(
	ID_Cliente Bigint not null,
	Nombre Varchar(100) not null,
	Apellido Varchar(100) not null,
	Telefono Bigint,
	Email Varchar(150)
)
Go

Create Table Sector(
	ID_Cliente Bigint not null ,
	Nombre_Sector Varchar(150) not null,
	Nombre_Empresa Varchar(150) not null
)


-- Restricciones

Alter table Cliente
add Constraint PK_Cliente Primary key (ID_Cliente)
Go

Alter table Sector 
add Constraint CHK_Sector check (Nombre_Sector in ('Luz','Agua','Gas'))
Go

Alter table Sector
add Constraint UNQ_Sector unique (ID_Cliente) 

Alter table Sector
add Constraint FK_Sector Foreign key (ID_Cliente)
References Cliente(ID_Cliente)



