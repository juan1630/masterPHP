/*
	FUNCIONES PARA FECHAS 
*/
select fecha from usuarios;

select email, fecha, curdate() as 'Fecha actual' from usuarios;

/*
	curdate muestra la fecha actual
*/

select email, datediff(fecha, curdate()) as 'Fecha actual' from usuarios;
/*
	Nos da la diferencia entre las fechas
*/

select email, dayname(fecha) as 'Fecha actual' from usuarios;

/*
	dayname nos da el nombre del dia, en inlges
*/
select email, dayofmonth(fecha) as 'Fecha actual' from usuarios;

/*
	El dia en el que se registro el usuario o se añadio el registro a la base de datos
*/

select email, dayofweek(fecha) as 'Fecha actual' from usuarios;

select email, dayofyear(fecha) as 'Fecha actual' from usuarios;

select email, month(fecha) as 'Fecha actual' from usuarios;
/*
	El mes de la fecha
*/

select email, hour(fecha) as 'Fecha actual' from usuarios;
/*
	Saca la hora de la fecha
*/

select email, curtime() as 'Fecha actual' from usuarios;
/*
	La hora actual
*/

select email, sysdate() as 'Fecha actual' from usuarios;

/*
	La fecha del sistema operativo del servidor
*/


select email, date_format(fecha, '%d-%m-%y') as 'Fecha actual' from usuarios;

/*
	formatea la fecha de la forma en la que se le especifique
*/

