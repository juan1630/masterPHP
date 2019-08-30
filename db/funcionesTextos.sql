

/*
	FUNCIONES PARA TEXTOS
*/


select upper(nombre) from usuarios;

/*
	Convierte en mayusculas las columnas que se le indiquen
*/

select lower(nombre) from usuarios;

/*
	Convierten en minusculas las columnas que se le indican
*/


select concat(nombre,' ' , apellidos ) as nombreCompleto from usuarios;

/*
	Con esta funcion se puden concatenar las columnas o textos
*/

select upper(concat(nombre,' ' , apellidos )) as nombreEntero from usuarios;

/*
	Se agrega  una funcion dentor de otra de forma que se ejecutan casi al mismo tiempo
*/


select email, length(concat(nombre,' ' , apellidos )) as fullname from usuarios;

/*
	length no cuenta el numero de caracteres que se tiene
*/

select trim( concat('               ', nombre,' ' , apellidos, '     ' )) from usuarios;

/* 
	trim elimina los campos de una forma más limpia, esto nos dice que se muestran sin espacios 
*/
