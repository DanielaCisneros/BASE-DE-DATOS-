create database Multiusuario;
use Multiusuario;

create table Usuarios (
id int auto_increment primary key,
nombre varchar(45) not null,
correo varchar(45) not null,
contraseña varchar(45) not null
);


DELIMITER $
CREATE PROCEDURE ActualizarCorre(
 nombreUsuario varchar(45), 
 correo varchar(45), 
 contraseña varchar(50)
)
BEGIN
start transaction;
update Usuarios set Usuarios.correo = correo 
where Usuarios.nombre = nombreUsuario and Usuarios.contraseña = contraseña;
commit;
rollback;
END$