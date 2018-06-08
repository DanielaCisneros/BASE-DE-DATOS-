create database Veterinaria ;
use Veterinaria ;

create table Personas(
id int auto_increment not null ,
nombre varchar (50),
primary key (id)
);


-- YA GENERO LA RELACION AL MOMENTO DE CREAR LA TABLA CON FOREIGN KEY  

create table Mascotas(
id int auto_increment not null ,
nombre varchar (50) ,
idPersona int (10),
primary key (id) ,
FOREIGN KEY (idPersona) REFERENCES Personas(id) 
);

-- inserto datos 

insert into Personas (nombre) values ('Alanys') ;

-- pregunto que id se genero y lo guardo en una variable 

SET @ultimoId = last_insert_id();

-- inserto la variable junto a los demas datos

insert into Mascotas(nombre,idPersona) values ('Michi',@ultimoId) ;

insert into Personas (nombre) values ('Gabriel') ;
insert into Mascotas(nombre,idPersona) values ('Junior',@ultimoId) ;

insert into Personas (nombre) values ('Franklin') ;
insert into Mascotas(nombre,idPersona) values ('Max',@ultimoId) ;


-- insert into Personas (nombre) values ('Alanys'),('Gabriel'),('Franklin') ;
-- insert into  Personas (nombre) values ('Gorky'),('Brayan') ;
-- insert into Mascotas (nombre,idPersona) values ('michi',1),('junior',2),('max',3),('loki',4),('dingo',5),('brawnie',4),('duke',5),('body',5)



