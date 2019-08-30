show databases;


use blogmaster;

/*
	USO DE OPERADORES ARITMETICOS DENTOR DEL SQL
    
    Existen los mismo operadores que en los lenguajes de programación
*/

select email, (4+7) from usuarios;


select email, (4+7) as 'operacion' from usuarios;
/* Se le pone el alias de operacion se puden sacar las operaciones de suman, resta, devision, multiplicacion */

/*
select id, emial, (4-4) as 'operacion' from usuarios order by desc;
*/


select id, (id +7) as 'operaciones' from usuarios;

/*
	Utilizamos la columna para crear la suma de los operadores 
*/

/*
	FUNCIONES MATEMATICAS EN SQL
*/

select ceil(7.345) as 'operaciones' from usuarios;

/*
	ceil es una funcion que redondea los valores decimales, esta redondea  a la alza
*/

select floor(7.345) as 'operaciones' from usuarios;

/*
	floor es una funcion que redondea los valores decimales, esta redondea  a la baja
*/

select PI() as 'operaciones' from usuarios;


select round(7.843) as 'operaciones' from usuarios;

select sqrt(7.843) as 'operaciones' from usuarios;
