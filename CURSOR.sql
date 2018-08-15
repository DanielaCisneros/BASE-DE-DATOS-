create database Cursores;
use Cursores;
 
create table Personas(
id int auto_increment primary key not null,
nombre varchar(100),
edad int 
);

insert into Personas(nombre,edad) values ('luis',23),('laura',20),('carlos',21);

delimiter $
create function EdadMayor() returns varchar (100)
begin
-- variables
	declare nombre varchar(100);
	declare edades int;
	declare mayor int;
	declare total int;	
	declare contador int;
	DECLARE resultado varchar (100);
-- declaramos el cursor
	declare cursorMayor cursor for SELECT Personas.nombre,Personas.edad 
	from Cursores.Personas;
-- inicializamos valores a las variables	
	set mayor = 0;
	set contador = 1;
	set total = 0;
-- gurdamos la cantidad de registros que existe y los contamos
	select COUNT(*) into total from Cursores.Personas;
-- abrimos cursor y realizamos la operacion/cerramos cursor
OPEN cursorMayor;
	while contador <= total do
		fetch cursorMayor into nombre,edades; -- instruccion para iterar el cursor y guardar la iteracion en variables
		if edades > mayor then
			set resultado = concat(nombre,'',edades);
			set mayor = edades; 
		end if;
		set contador = contador + 1;
	end while;
CLOSE cursorMayor;
return resultado;
end$