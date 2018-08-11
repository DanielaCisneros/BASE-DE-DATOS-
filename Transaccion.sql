create database Transacciones;
use Transacciones;

create table Productos(
	id int auto_increment primary key not null,
	nombre varchar(100),
    costo decimal,
    cantidad int
);

CREATE TABLE Proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100),
    idProducto INT
);

insert into Productos(nombre,costo ,cantidad)
values ('lacdat',56,4),('ivon',84,4),('soup',64,4);

insert into Proveedores(nombre,idProducto)
values ('libs S.A',1),('libs S.A',2),('Jacks',2),('Jacks',3),('Jacks',1);

delimiter $
create procedure Transaccion(
	nombreProveedor varchar(100),
    costo decimal,
    nombreProducto varchar(100),
    cantidad int,
	idProducto int
)
begin
start transaction;
	select count(idProducto) from Proveedores where Proveedores.nombre = nombreProveedor;
    insert into Productos(nombre,costo,cantidad) values (nombreProducto,costo,cantidad);
	insert into Proveedores(nombre,idProducto) values (nombreProveedor,idProducto);
commit;
rollback;
end$


