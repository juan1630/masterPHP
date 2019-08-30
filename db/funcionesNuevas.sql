
select * from usuarios;

select email, isnull(apellidos) from usuarios;
/*
	Devuelve true o false si el campo que se indica es nulo
    0 si no es nulo, 1 si es nulo
*/

select strcmp('hola', 'hola') from usuarios;

/*
	Distingue si los valores son iguales o son diferentes
*/

-- select distinct user()  from usuarios;

/* 
	La funcion distinct nos devualve los valores que se repiten pero solo una sola vez
 */
 
-- select  database()  from usuarios;
 
 /*
	Esta funcion nos devualve el nombre de la se base de datos que se esta usando
 */
 
 
 select ifnull(apellidos, 'Este campo esta vacio') from usuarios;
/*
	 Agrega el texto que se le pasa por parametro si es que el campo se encuentra nulo
*/
