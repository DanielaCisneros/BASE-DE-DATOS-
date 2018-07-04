create database Locos;
use Locos;

create table Callate(
id int auto_increment primary key not null,
nombre varchar (20) not null,
gradoDeDeseperado int (20) not null
);

insert into Callate (nombre,gradoDeDeseperado) values ('frank',10);

delimiter $$
create trigger noAceptar on Callate 
before insert Callate 
if new.gradoDeDeseperado < 5 then set new.gradoDeDeseperado = 1 
end; 

