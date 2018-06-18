create database Movies;
use Movies;

create table Producers(
id int auto_increment not null ,
nombre varchar(50)	not null,
place varchar(50) not null,
fundador varchar(50)not null,
primary key (id)
);

Create	table	Earnings(	
id int not null AUTO_INCREMENT primary key,
investment	varchar(50)not null,
earnings	varchar	(50)not null,
idNameMovie int not null
);

Create	table	Genders(
id int not null AUTO_INCREMENT primary key,
tipo varchar (50) not null,	
category varchar (50)not null				
);

create table Movies (
id int auto_increment not null primary key,
nameMovie varchar(50)not null,
idGender int not null,
idProducer int not null
);

INSERT INTO Producers (nombre, place, fundador) VALUES
('Columbia Pictures','California','Harry Cohn Joe Brandt'),
('Chartoff-Winkler Productions','New York','Jhon G. Avildsen'),
('20th Century Fox','The Angels','Joseph M. Schenck'),
('Walt Disney Pictures','California','Walt Disney'),
('Warner Bros. Pictures','California','Albert Warner'),
('Paramount Pictures','California','William Wadsworth'),
('Universal Studios','Universal City Plaza Drive','Carl Laemmine');

INSERT INTO Earnings (investment, earnings, idNameMovie) VALUES
('1075000','2500000000',1),
('7000','20000000',2),
('150000','190000000',3),
('10000','400000000',4),
('675000','30000000',5),
('325000','50000000',6),
('350000','100000000',7),
('11500000','562816256',8),
('19400000','194349972',9);

INSERT INTO Genders (tipo, category) VALUES
('Drama','Cine catastrofe'),
('Comedia', 'Animacion'),
('Accion', 'Cine de explotacion'),
('Ciencia Ficion', 'Ciencia ficion'),
('Fantancia','Fantasia'),
('Terror', 'Cine negro'),
('Romance', 'Western'),
('Suspenso', 'Policiaco'),
('Musical', 'Cine sonoro'),
('Melodrama', 'Cine catastrofe');

INSERT INTO Movies (nameMovie, idGender, idProducer) VALUES
('Rocky',3,2),
('El Mariachi',8,1),
('Actividad Paranormal',6,6),
('Proyecto de la bruja de blair',6,6),
('Viernes 13',6,5),
('Evil Dead',6,5),
('Haloween',6,1),
('Mad Max',3,3),
('Monster Inc',2,4),
('La forma del agua',7,3);

SELECT movies.nameMovie AS 'Name Movie', genders.tipo AS 'Gender', earnings.earnings AS 'Earnings', earnings.investment AS 'Investment', producers.nombre AS 'Productora' FROM movies
INNER JOIN earnings ON earnings.idNameMovie = movies.id
INNER JOIN genders ON genders.id = movies.idGender
INNER JOIN producers ON producers.id = movies.idProducer
group by movies.id;

SELECT movies.nameMovie AS 'Name Movie', genders.tipo AS 'Gender', earnings.earnings AS 'Earnings', earnings.investment AS 'Investment', producers.nombre AS 'Productora' FROM movies
INNER JOIN earnings ON earnings.idNameMovie = movies.id
INNER JOIN genders ON genders.id = movies.idGender
INNER JOIN producers ON producers.id = movies.idProducer
order by movies.id desc;

SELECT movies.nameMovie AS 'Name Movie', genders.tipo AS 'Gender', earnings.earnings AS 'Earnings', earnings.investment AS 'Investment', producers.nombre AS 'Productora' FROM movies
INNER JOIN earnings ON earnings.idNameMovie = movies.id
INNER JOIN genders ON genders.id = movies.idGender
INNER JOIN producers ON producers.id = movies.idProducer
Where earnings.earnings AND earnings.investment > 1000000;
