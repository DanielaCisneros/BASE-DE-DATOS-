create database CorreccionPrueba ;
use CorreccionPrueba;

create table Productos(
id int auto_increment primary key,
nombre varchar (50) not null,
precio decimal (50) not null,
idTipo int (20),
foreign key (idTipo) references TipoProducto(id) 
);

create table TipoProducto(
id int auto_increment primary key,
nombre varchar (50) not null
);

create table Factura(
id int auto_increment primary key,
nombreFactura varchar (50) not null,
fechaFactura datetime not null,
iva decimal (20) not null,
total decimal (20) not null,
idCliente int (20) not null,
foreign key (idCliente) references Cliente(id) 
);

create table Cliente(
id int auto_increment primary key,
nombre varchar (50) not null,
direccion varchar (50) not null,
telefono varchar (50) not null
);

create table Detalles(
id int auto_increment primary key,
idFactura int (50) not null,
idProducto int (50) not null,
cantidad int (50) not null,
precio decimal (30) not null,
total decimal (30) not null,
foreign key (idFactura) references Factura(id),
foreign key (idProducto) references Productos(id)
);

create table Proveedores(
id int auto_increment primary key,
nombre varchar (50) not null,
direccion varchar (50) not null,
telefono varchar (50) not null,
idProducto int (50) not null,
cantidadProducto int (50) not null,
foreign key (idProducto) references Productos(id)
);


create table Bodegas(
id int auto_increment primary key,
nombre varchar (50) not null,
idProducto int (50) not null,
cantidadPro int (50) not null,
foreign key (idProducto) references Productos(id)
);