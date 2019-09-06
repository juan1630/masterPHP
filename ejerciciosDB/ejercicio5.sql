-- En está sección se abracn los ejercicios del 15 al 


-- EJERCICIO NÚMERO 15
/*
	Mostrar los clientes con el mayor número de pedidos y mostrar cuantos hicieron
*/

-- show databases;


-- use concesionario;

-- select * from encargos;


/*
	De esta forma se cuenta el número de los pedidos 
*/


-- select c.nombre, cliente_id, count(e.id) from encargos as e inner join clientes as c on c.id = e.cliente_id  group by cliente_id  order by  2 desc limit 2;



-- EJERCICIO 16 

/*
	Obtener listado de clientes atendidos por el vendedor 'David lopez'
*/


-- select * from vendedores;

-- select * from clientes where vendedor_id = 4;

-- select nombre from clientes where vendedor_id in (select id from vendedores where nombre = 'David' and apellido = 'lopez');


-- EJERCICIO 17 

/*
	Obtener una lista con los encargos realizados por el cliente ('fruteria diaz')
*/


-- select * from vendedores;

-- select * from clientes;

-- select e.id, co.modelo, cantidad, c.nombre, e.fecha from encargos  as e inner join clientes as c on c.id = cliente_id  inner join coches as co on co.id = e.coche_id  where cliente_id in (select id from clientes where nombre = 'Fruteria Diaz')  ;



-- EJERCICIO 18

/*
	Listar los clientes que han hecho algun encargo del coche (TEsla model X)
*/


-- select * from vendedores;

-- select * from coches;

-- select * from clientes;

-- select * from clientes  where id in  (select  cliente_id from encargos where coche_id = (select id from coches where modelo like '%Tesla model X%') );



-- EJERCICIO 19

/*
Obtener los vendodres con dos o más clientes
*/


-- select * from vendedores;

-- select * from coches;

-- select * from clientes;


-- select * from vendedores where id in (select vendedor_id from clientes group by vendedor_id having count(cliente_id) >= 2 );
