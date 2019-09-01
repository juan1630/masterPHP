/*
	Consultas multitablas 
    consultas que sirven para obtener informacio de varias tablas con una sola consulta. 
    
    
    Mostrar las entradas con el nombre del autor y el  la categoria
    
*/

select e.titulo, u.nombre, u.apellidos, c.nombre  from entradas as e, usuarios as u, categorias as c where e.usuario_id = u.id and e.categoria_id = c.id;

-- Se muestran los datos correspondiente cuando se encuentra el id en ambas tablas de igual manera en las tablas de categorias 



/*
	Mostrar el nombre de las categorias y el número total de las entradas 
*/

select nombre, count(e.id) from categorias as c, entradas as e where e.categoria_id =c.id group by e.categoria_id;

/*
	Mostrar el email del usuario y al lado cuantas entradas tiene
*/

select u.email, count(titulo) from usuarios as u, entradas as e where e.usuario_id = e.usuario_id group by e.usuario_id; 



/*
	INNER JOIN
    
    Esta es otra forma de hacer consulas multitablas, solo que más optimizada 
*/

select e.id, e.titulo, u.nombre as 'Autor' from entradas e inner join usuarios as u on e.usuario_id = u.id;

select e.id, e.titulo, u.nombre as 'Autor' from entradas e inner join usuarios as u on e.usuario_id = u.id inner join categorias c on e.categoria_id = c.id;


-- LEFT JOIN 


select c.nombre, count(e.id) from categorias c left join entradas e on e.categoria_id = c.id group by e.categoria_id;

/*
	Con el left join nos muestra todas las filas y lo que hay a la derecha solamente se muestra si hay una concidencia con la tabla de la izquierda
*/


/*
	RIGHT JOIN
    
    Funciona de manera similar a la left join solo que con las tablas a la izquierda
    Cambia la horientacion de las tablas 
*/

select c.nombre , count(e.id) from entradas e left join categorias c on e.categoria_id = c.id group by e.categoria_id;



