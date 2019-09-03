/*
	Modificar la comision de los vendedoes cuando ganen más de 50000

*/


select * from vendedores;


update vendedores set comision = 0.5 where sueldo >= 5000;


/*
	Incrementer el precio de todods los coches en 2% de todos los coches
*/

select * from coches;



-- SET SQL_SAFE_UPDATES = 0;
-- Esta sentecnia se ejecuta para que se puedan hacer los updates ya que las nuevas versones tienen la versionde updates seguros
update coches set precio = precio * 1.05;


-- Aumenta el precio de todos los coches en un 0.5%

/*
	Sacar a todos los vendedores cuya fecha de alta sea posterior a l 1 julio del 2019
*/

select * from vendedores  where fecha >= '2018-07-01';
