create database AcuatlizarRegistros;
use AcuatlizarRegistros;

SET SQL_SAFE_UPDATES = 0;

create table Personas(
id int primary key auto_increment not null,
nombre varchar(200),
apellido varchar(200),
ciudad varchar(200),
edad int  
);

insert into Personas(nombre,apellido,ciudad,edad) 
values ('Jhon','Lopez','Quito',18),
('David','Tobar','Guayaquil',21),
('Andrea','Pazmiño','Cuenca',32),
('Samuel','Jaramillo','Ambato',25),
('Emily','Castro','Guaranda',20);

update Personas
set nombre = 'Maria'
where id = 1;

update Personas
set apellido = 'bastidas' 
where id = 5;

update Personas
set ciudad = 'Loja'
where apellido = 'Tobar';

update Personas
set ciudad = 'Loja',edad = 26
where nombre = 'Emily'; 

update Personas
set edad = 24
where apellido = 'Lopez';

update Personas
set ciudad =  'Guayaquil'
where nombre = 'Andrea' and apellido = 'Pazmiño';

update Personas
set edad = 20
where nombre = 'Samuel';

update Personas
set nombre='Brayan',
apellido='Bravo',
ciudad='Pichincha'
where edad=24;

update Personas
set nombre='Andres',
apellido='Flores'
where ciudad='Ambato';



update Personas
set ciudad='Quito'
where edad=20;


select * from Personas