--Esta es una realacion de muchos a muchos entre clientes y instalaciones
create database Relacion_N_a_N
go

use Relacion_N_a_N
Go

create table Clientes (
 Id int not null primary key,
 Nombre varchar(50) not null,
 Apellido varchar(50) not null,
 Telefono varchar(20) null,
 Email varchar(50) not null unique
 )

 create table TipoInstalaciones (
	Id int not null primary key,
	Descripcion varchar not null,
	CargoFijo decimal(18,2) null,
	Impuesto decimal(18,2) null
	)

create table Instalaciones_Clientes (
	IdCliente int not null foreign key(IdCliente) references Clientes(Id),
	IdInstalacion int not null foreign key(IdInstalacion) references TipoInstalaciones(Id),
	CodDireccion int null
	primary key (
	IdCliente, IdInstalacion)
	)