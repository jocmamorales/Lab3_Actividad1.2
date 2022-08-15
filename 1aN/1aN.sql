Create Database Relacion_1_N
Go

Use Relacion_1_N
Go

Create Table Cliente(
    ID_Cliente Bigint not null Primary key,
    Nombre Varchar(100) not null,
    Apellido Varchar(100) not null,
    Telefono Bigint,
    Email Varchar(150)
)
Go

Create Table Factura(
	ID_Factura INT not null PRIMARY KEY,
	ID_Cliente Bigint not null Foreign key(ID_Cliente) References Cliente(ID_Cliente),
    TIPO char(1) not null check (TIPO IN ('A','B','C'))
)
