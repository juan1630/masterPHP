-- EJERCICIOS DEL 20 AL 

-- EJERCICIO 20

/*
		Obtener el vendeodr con el mayor salario y el nombre del grupo en el que trabaja
*/

-- use concesionario;


-- select * from grupos where id in (select grupo_id from vendedores where sueldo = ( select max( sueldo)  from vendedores ) );




-- EJERCICIO 21

/*
		Obtener los nombre y las ciudades de los cientes con encargos de 3 unidades en adelante
*/


-- select nombre, ciudad from clientes where id in (select id from encargos where cantidad >= 3 ); 


-- EJERCICIO 22

/*
	Obtener el listado de los clientes (id, nombre ) mostar el número de vendedor  y su nombre 
*/


-- select cli.id, cli.nombre, concat(v.id, ' ' ,v.nombre ) from clientes  as cli, vendedores as v  where cli.vendedor_id = v.id; 


-- EJERCICIO 22

/*
	Obtener el listado de los clientes (id, nombre ) mostar el número de vendedor  y su nombre 
*/


-- select cli.id, cli.nombre, concat(v.id, ' ' ,v.nombre ) from clientes  as cli, vendedores as v  where cli.vendedor_id = v.id; 




-- EJERCICIO 24

/*
	Listar los encargos con el nombre del coche, el nombre del cliente y el nombre de la ciudad cuando sean de madrid
*/


-- select * from clientes;

-- select * from encargos;


-- select e.id, co.modelo, c.nombre, c.ciudad from encargos as e inner join coches as co on co.id = c.id  inner join clientes as c on c.id = e.cliente_id where c.ciudad = 'barcelona';


-- corregit esta parte 


-- EJERCICIO 24

/*
	Sacar de vendedores que tienen jefe y el nombre del jefe
*/


-- select * from vendedores;


-- select concat( v1.nombre , ' ' , v1.apellido ) as vendedor, concat( v2.nombre, ' ' ,v2.apellido ) as 'Jefe' from vendedores  as v1 inner join vendedores  as v2 on v1.jefe = v2.id  


