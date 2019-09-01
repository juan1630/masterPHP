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

select nombre from categorias where (select count(categoria_id) from entradas group by categoria_id) >= 3;

/*
	Entradas que se hayan hecho los martes de la semana que sea
*/

/*
	Mostrar el nombre del usuario que tenga más entrdas 

*/

/*
	Categorias sin entradas

*/
