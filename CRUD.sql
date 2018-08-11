create database Crud;
use Crud;

Create	table	Clientes(
id int not null AUTO_INCREMENT primary key,
nombre  varchar (100)not null,
cedula	int	(100)not null
);

create table Servicios(
id int auto_increment not null primary key,
tipo varchar(100) not null,
costo decimal
);

create table Personal(
id int auto_increment not null primary key,
nombre varchar(100) not null,
area varchar(100) not null,
salario decimal not null
);

create table Bienes(
id int auto_increment not null primary key,
tipo varchar(100) not null,
nombre varchar(100) not null,
cantidad int not null
);

create table Inventarios(
id int auto_increment not null primary key,
tipo varchar(100) not null,
producto varchar(100) not null,
cantidad int not null
);

create table Sucursales(
id int auto_increment not null primary key,
direccion varchar(200) not null,
numero int not null
);

create table ServiciosPrestados(
id int auto_increment not null primary key,
tipo varchar(200) not null,
costo decimal not null
);

create table Permisos(
id int auto_increment not null primary key,
tipo varchar(200) not null,
costo decimal not null
);

create table Proovedores(
id int auto_increment not null primary key,
nombre varchar(200) not null,
tipo varchar(200) not null,
producto varchar(200) not null,
cantidad int not null
);

create table UsoServicios(
id int auto_increment not null primary key,
tipo varchar(200) not null,
nombre varchar(200) not null,
fecha varchar(200) not null
);

insert into Clientes (nombre,cedula)
values ('veronica',1710330646),
('andres',1719838300);

insert into Servicios (tipo,costo)
values ('piscina',5),
('masajes',30);

insert into Bienes (tipo,nombre,cantidad)
values ('infraestructura','piscina',2),
('mobiliaria','camillas',4);

insert into Inventarios (tipo,producto,cantidad)
values ('alimento','jugos',50),
('limpieza','escobas',20);

insert into Sucursales (direccion,numero)
values ('quito',1),
('el valle',2);

insert into ServiciosPrestados (tipo,costo)
values ('agua',200),
('luz',350);

insert into Personal(nombre,area,salario)
values ('gabriel','seguridad',450),
('dalia','limpieza',386);


delimiter $$
create procedure InsertClientes(
nombre varchar(100),
cedula int(20)
)
begin
insert into Clientes (nombre,cedula) values (nombre,cedula,identificador); 
end;

delimiter $$
create procedure UpdateClientes(
nombre varchar(100),
cedula int
)
begin
update Clientes set Clientes.nombre = nombre where Clientes.cedula = cedula; 
end;

delimiter $$
create procedure SelectClientes(
nombre varchar(200)
)
begin
select * from Clientes where Clientes.nombre = nombre;
end;

delimiter $$
create procedure DropClientes(
cedula varchar(200)
)
begin
delete from Clientes where Clientes.cedula = cedula;
end;

DELIMITER $$
CREATE procedure InsertServicios(
tipo varchar(100),
costo int
)
begin
insert into Servicios(tipo,costo) values (tipo,costo);
end;

DELIMITER $$
create procedure SelectServicios(
tipo varchar (100)
)
begin
select * from Servicios where Servicios.tipo = tipo; 
end;

delimiter $$
create procedure UpdateServicios(
tipo varchar(100),
costo int
)
begin
update Servicios set Servicios.costo = costo where Servicios.tipo = tipo;
end;

delimiter $$
create procedure DeleteServicios(
tipo varchar(100)
)
begin
delete from Servicios where Servicios.tipo = tipo;
end;

delimiter $$
create procedure InsertPersonal(
nombre varchar(100),
area varchar(100),
salario decimal
)
begin
insert into Personal(nombre,area,salario) values (nombre,area,salario);
end;

delimiter $$
create procedure UpdatePersonal(
nombre varchar(100),
area varchar(100),
salario decimal 
)
begin
update Personal set Personal.area = area, Personal.salario = salario
where Personal.nombre = nombre;
end;

delimiter $$
create procedure SelectPersonal(
nombre varchar(100)
)
begin
select * from Personal where Personal.nombre = nombre;
end;

delimiter $$
create procedure DeletePersonal(
nombre varchar(100)
)
begin
delete from Personal where Personal.nombre = nombre;
end;

delimiter $$
create procedure InsertBienes(
tipo varchar(100),
nombre varchar(100),
cantidad int
)
begin
insert into Bienes(tipo,nombre,cantidad) values (tipo,nombre,cantidad);
end;

delimiter $$
create procedure UpdateBienes(
nombre varchar(100),
cantidad int
)
begin
update Bienes set Bienes.cantidad = cantidad where Bienes.nombre = nombre;
end; 

delimiter $$
create procedure SelectBienes(
tipo varchar(100)
)
begin
select * from Bienes WHERE Bienes.tipo = tipo;
end;

delimiter $$
create procedure DeleteBienes(
nombre varchar(100)
)
begin
DELETE FROM Bienes WHERE Bienes.nombre = nombre;
end;

DELIMITER $$
create procedure InsertInventarios(
tipo varchar(100),
producto varchar(100),
cantidad int
)
begin
insert into Inventarios (tipo,producto,cantidad) values (tipo,producto,cantidad);
end;

DELIMITER $$
create procedure UpdateInventarios(
tipo varchar(100),
producto varchar(100),
cantidad int
)
begin
update Inventarios set Inventarios.tipo = tipo, Inventarios.cantidad = cantidad
where Inventarios.producto = producto;
end;

DELIMITER $$
create procedure SelectInventarios(
producto varchar(100)
)
begin
select * from Inventarios where Inventarios.producto = producto;
end;

DELIMITER $$
create procedure DeleteInventarios(
producto varchar(100)
)
begin
DELETE FROM Inventarios WHERE Inventarios.producto = producto;
end;

DELIMITER $$
create procedure InsertSucursales(
direccion varchar(200),
numero int 
)
begin
insert into Sucursales (direccion,numero) values (direccion,numero);
end;

DELIMITER $$
create procedure UpdateSucursales(
id int,
direccion varchar(200),
numero int 
)
begin
update Sucursales set Sucursales.direccion = direccion, Sucursales.numero = numero 
where Sucursales.id = id;
end;

DELIMITER $$
create procedure SelectSucursales(
numero int 
)
begin
select * from Sucursales where Sucursales.numero = numero;
end;

DELIMITER $$
create procedure DeleteSucursales(
numero int 
)
begin
delete from Sucursales where Sucursales.numero = numero; 
end;

delimiter $$
create procedure InsertServiciosPrestados(
tipo varchar(200),
costo decimal
)
begin
insert into  ServiciosPrestados(tipo,costo) values (tipo,costo);
end;

delimiter $$
create procedure UpdateServiciosPrestados(
tipo varchar(200),
costo decimal
)
begin
update ServiciosPrestados set ServiciosPrestados.costo = costo 
where ServiciosPrestados.tipo = tipo;
end;

delimiter $$
create procedure SelectServiciosPrestados(
tipo varchar(200)
)
begin
select * from ServiciosPrestados where ServiciosPrestados.tipo = tipo; 
end;

delimiter $$
create procedure DeleteServiciosPrestados(
tipo varchar(200)
)
begin
delete from ServiciosPrestados where ServiciosPrestados.tipo = tipo;
end;

delimiter $$
create procedure InsertPermisos(
tipo varchar(200),
costo decimal
)
begin
insert into Permisos(tipo,costo) values (tipo,costo);
end; 

delimiter $$
create procedure UpdatePermisos(
tipo varchar(200),
costo decimal
)
begin
update Permisos set Permisos.costo = costo where Permisos.tipo = tipo;
end;

delimiter $$
create procedure SelectPermisos(
tipo varchar(200)
)
begin
select * from Permisos where Permisos.tipo = tipo;
end;

delimiter $$
create procedure DeletePermisos(
tipo varchar(200)
)
begin
delete from Permisos where Permisos.tipo = tipo;
end;

delimiter $$
create procedure InsertProovedores(
nombre varchar(200),
tipo varchar(200),
producto varchar(200),
cantidad int 
)
begin
insert into Proovedores(nombre,tipo,producto,cantidad) 
values (nombre,tipo,producto,cantidad);
end;

delimiter $$
create procedure UpdateProovedores(
tipo varchar(200),
producto varchar(200),
cantidad int 
)
begin
update Proovedores set Proovedores.tipo = tipo, Proovedores.cantidad = cantidad 
where Proovedores.producto = producto;
end;

delimiter $$
create procedure SelectProovedores(
nombre varchar(200)
)
begin
select * from Proovedores where Proovedores.nombre = nombre;
end;

delimiter $$
create procedure DeleteProovedores(
nombre varchar(200) 
)
begin
DELETE FROM Proovedores WHERE Proovedores.nombre = nombre;
end;

delimiter $$
create procedure InsertUsoServicios(
tipo varchar(200),
nombre varchar(200),
fecha varchar(200)
)
begin
INSERT INTO UsoServicios(tipo,nombre,fecha) VALUES (tipo,nombre,fecha);
end;

delimiter $$
create procedure UpdateUsoServicios(
id int,
nombre varchar(200)
)
begin
UPDATE UsoServicios SET UsoServicios.nombre = nombre WHERE UsoServicios.id = id;
end;

delimiter $$
create procedure SelectUsoServicios(
nombre varchar(200)
)
begin
select * from UsoServicios where UsoServicios.nombre = nombre;
end;

delimiter $$
create procedure DeleteUsoServicios(
nombre varchar(200)
)
begin
delete from UsoServicios where UsoServicios.nombre = nombre;
end;