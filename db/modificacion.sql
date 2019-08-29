/*
MODIFICACIO DE LAS TABLAS 
*/


/*
	RENOMBRAR UNA TABLA 
*/

alter table usuarios rename to usuariosRenombrados;

show tables;

/*
	Cambiar el nombre de una columna 
    Se cambia el nombre de la columa 
*/

alter table usuariosRenombrados change apellidos apellido varchar(100) null;

desc usuariosRenombrados;

/*
	modificar columna sin cambiar el nombre de la tabla
*/


alter table usuariosRenombrados modify apellido varchar(50) not null;

/*
AGREGAR UNA NUEVA COLUMNA

*/

alter table usuariosRenombrados add website varchar(100) not null;

/*
	Con la intruccio add se le agrega una nueva columna a la tabla 
*/
desc usuariosRenombrados;

/* Añador una restriccion a la columna  */

alter table usuariosRenombrados add constraint uq_email unique(email);
/*
	Con esta sentencia no se puede repetir el valor de los campos 
*/

alter table usuariosRenombrados add constraint uq_email unique(email);
/*
	Con esta sentencia no se puede repetir el valor de los campos 
    en caso de que se introduzca algo repetido nos da un error
*/

/*
	Borrar una columna
*/

alter table usuariosRenombrados drop website;
/*
	Quita la columna website
*/

