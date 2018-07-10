create database Pizzas;

use Pizzas;

create table clientes(
	id int not null primary key auto_increment,
    nombre varchar (50) not null
);

create table pedidos(
	id int not null primary key auto_increment,
    total decimal not null,
    tipo varchar (50),
    idCliente int not null,
    idPizza int not null,
    foreign key (idCliente) references clientes(id),
    foreign key (idPizza) references pizzas(id)
);

create table pizzas(
	id int not null primary key auto_increment,
    idTipoPiza int not null,
    cantidad int not null
);


select pedidos.idPizza, count(pizzas.id) from pedidos
inner join pizzas on pizzas.id = pedidos.idPizza;

create table tipoPizzas(
	id int not null primary key auto_increment,
    nombre varchar(60) not null,
    ingredientes varchar(120) not null,
    costo decimal not null 
);

select sum(cantidad),nombre
from tipopizzas as TP
inner join pizzas as P
on TP.id = P.idtipoPizza
group by nombre 
