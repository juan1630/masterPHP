/*
	Sub consultas
	Son consultas que se ejecutan dentro de otras consultas pero que usa los valores de la consulta principal
*/

select * from entradas;

/*
	Por medio de las claves ajenas es como se la relacion 
*/


select * from usuarios;

insert into usuarios values (null, 'Ivan', 'Guerrero', 'ivan@gmail.com', 'ivan12', curdate());
/*
	Se crea este usuario para el ejercicio que se va realizar 
*/

select nombre from usuarios where id in (select usuario_id from entradas);

/*
	Sacar los usuarios que no tienen entrdas registradas
    in significa que cuando se hagan subconsultas pertenezca a los datos cuando el id exista 
*/


select nombre from usuarios where id not in (select usuario_id from entradas);

/*
	Para sacar los usuarios que no tienen entradas
*/


/* Subconsultas */

--  Sacar los usuarios que tengan alguna entrada y que hablen del gta

select nombre, apellidos from usuarios where id in (select usuario_id from entradas where titulo like "%GTA%");

/*
	Todas las entradas de la  categoria accion
*/

	select * from entradas where categoria_id in (select id from categorias where nombre = 'Accion'); 
    	select * from entradas where categoria_id in (select id from categorias where nombre = 'Deportes'); 


/*
	Con ategorias de mas de 3 entradas
*/


-- select count(categoria_id), categoria_id from entradas group by categoria_id >= 3; 



-- select nombre from categorias where id in (select categoria_id from entradas group by categoria_id having count(categoria_id));


/*
	Entradas que se hayan hecho los martes de la semana que sea
*/

select *  from usuarios where id in (select usuario_id from entradas where dayofweek(fecha) = 3  );

insert into entradas values (null, 2, 2, 'Juagndo con sql', 'nos devuelva los usuarios que crearon esntradas un día de la semana', curdate());

/*
	Mostrar el nombre del usuario que tenga más entrdas 

*/


-- select count(id), usuario_id from entradas group by usuario_id order by count(id) desc limit 1;

-- select nombre from usuarios where id = (select usuario_id from entradas group by usuario_id order by count(id) desc limit 1);

-- Este nos devuelve nombre y el apellido 

/*
	Categorias sin entradas

*/


select count(categoria_id), categoria_id from entradas group by categoria_id; 


/*
	Nos devuelve el nombre de las categorias que tiene más de tres entradas o más de 3 
*/

select categoria_id from entradas group by categoria_id  having  count(categoria_id) >= 3;

/*
	Devuelve id de las ategorias que tienen más de tres entradas 
*/


select * from categorias where id not in (select categoria_id  from entradas );

insert into categorias values (null, 'Plataformas');

select * from categorias;
