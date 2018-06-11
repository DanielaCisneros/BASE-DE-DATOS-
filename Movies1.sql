create database Movies;
use Movies;

Create	table	Awards(
id int not null AUTO_INCREMENT primary key,
nameAward   varchar (50)not null,
category	varchar	(50)not null,
nameAcademy	varchar	(50)not null				
);

create table Producers(
id int auto_increment not null ,
nombre varchar(50)	not null,
place varchar(50) not null,
fundador varchar(50)not null,
idProducers int not null,
primary key (id)
);

create table ProducersAndAwards(
id int auto_increment not null ,
idProducers int not null,
idAwards int not null,
primary key (id)
);

INSERT INTO Producers (nombre, place, fundador, idProducers) VALUES
('Columbia Pictures','California','Harry Cohn Joe Brandt',12),
('20th Century Fox','The Angels','Joseph M. Schenck',11),
('Walt Disney Pictures','California','Walt Disney',25),
('Warner Bros. Pictures','California','Albert Warner',36),
('Paramount Pictures','California','William Wadsworth',24),
('Universal Studios','Universal City Plaza Drive','Carl Laemmine',17);

INSERT INTO Awards (nameAward, category, nameAcademy) VALUES
('Oscar', 'excellence', 'Academy of Motion Picture Arts and Sciences'),
('Genie Awards', 'best Canadian cinema', 'canadian cinema academy'),
('Golden Globe', 'excellence in film and television', 'Association of the foreign press Hollywood'),
('Emmy', 'excellence in television', 'Academia Internacional de Artes y Ciencias de la Televisión');

INSERT INTO ProducersAndAwards (idProducers, idAwards) VALUES
(12,1),
(11,1),
(25,2),
(36,3),
(24,4),
(27,4);

ALTER TABLE Producers ADD FOREIGN KEY (idProducers) REFERENCES Awards(id)

