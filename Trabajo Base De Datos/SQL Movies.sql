create database Movies;
use Movies;

Create	table	Producers(		
id int not null AUTO_INCREMENT primary key,
nombre varchar(50)	not null,
place varchar(50) not null,
nameMovie varchar(50)not null		
);	

insert into Producers (id,nombre,place,nameMovie) 
values ( 1,'ColumbiaPictures' , 'LosÁngeles' , 'family' ) ;  
select * from Producers ;
select id,place  from Producers ;

Create	table	Earnings(	
id int not null AUTO_INCREMENT primary key,
investment	varchar(50)not null,
earnings	varchar	(50)not null
);	

ALTER TABLE Earnings add nameMovie varchar(50);
insert into Earnings (id,investment,earnings,nameMovie) 
values ( 1,'2000.000.000' , '600.000.000', 'Avengers: Infinity War');
select * from Earnings ;
select id,earnings  from Earnings ;

Create	table	Actors(
id int not null AUTO_INCREMENT primary key,
nombre	varchar(50)not null,
movie	varchar	(50)not null		
);	

Create	table	Awards(
id int not null AUTO_INCREMENT primary key,
category	varchar	(50)not null,
nameMovie	varchar	(50)not null,
nameAcademy	varchar	(50)not null				
);

insert into Awards (id,category,nameMovie,nameAcademy) 
values ( 1,'best movie' , 'Moonlight' , 'arts and comencé academy' );
select * from Awards ;
select id,nameAcademy  from Awards ;	

Create	table	Genders(
id int not null AUTO_INCREMENT primary key,
tipo varchar (50) not null,	
category varchar (50)not null					
);	

insert into Genders (id,tipo,category) 
values ( 1,'comedy' , 'animation');
select * from Genders ;
select id,category  from Genders ;

Create	table	AgeRestriction(
id int not null AUTO_INCREMENT primary key,
acronym	varchar	(20) not null,
age	int	(10) not null,
country	varchar	(50)not null						
);	

insert into AgeRestriction (id,acronym,age,country) 
values ( 1,'g' , 18 ,' EEUU ');
select * from AgeRestriction ;
select id,age  from AgeRestriction ;
