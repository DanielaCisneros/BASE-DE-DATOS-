create database Mascotas;

use Mascotas;

create table Dueños(
	id int not null primary key auto_increment,
    nombre varchar (50) not null,
    direccion varchar (100) not null
);

create table Perros(
	id int not null primary key auto_increment,
    nombre decimal not null,
    raza varchar (50) not null,
    idDueño int not null,
    foreign key (idDueño) references Dueños(id) 
);


create table Vacunas(
	id int not null primary key auto_increment,
    tipoVacuna varchar (120) not null,
    cantidad int not null
);

create table PerroVacunas(
	id int not null primary key auto_increment,
    idPerro int not null,
    idVacunas int not null,
    foreign key (idPerro) references Perros(id),
    foreign key (idVacunas) references Vacunas(id)
);

select Dueños.nombre, Perros.nombre, Vacunas.tipoVacuna from dueños
Inner join Perros ON Perros.idDueño = Dueños.id
Inner join  PerroVacunas ON PerroVacunas.idPerro = Perros.id
inner join Vacunas on vacunas.id = PerroVacunas.idVacunas;


