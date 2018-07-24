Create database Peluqueria;
use Peluqueria;

CREATE TABLE Clientes ( 
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nombre VARCHAR(120) NOT NULL, 
    tipoCorte VARCHAR(120) NOT NULL, 
    pago boolean NOT NULL
);

INSERT INTO Clientes (nombre,tipoCorte,pago) VALUES ('maribel', 'fleco',4),
('daniela', 'escalonado', 5),
('franklin', 'en v', 2),
('juan', 'militar', 3),
('jesica', 'cerquillo', 8);


DELIMITER $$
CREATE PROCEDURE procedimiento1 (
) BEGIN
-- Variables
  DECLARE variablePago boolean ;
  DECLARE variableTipoCorte VARCHAR(250);
  
-- Variable para controlar el fin del bucle
  DECLARE fin INT DEFAULT 0;
 
-- cursor
  DECLARE cursor1 CURSOR FOR 
    SELECT pago,tipoCorte FROM Clientes;
 
-- Cuando no existan mas datos la variable fin sera 1
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;
 
  OPEN cursor1;

 
  CLOSE cursor1;
END$$
DELIMITER ;