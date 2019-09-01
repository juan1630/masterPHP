

show databases;

use blogmaster;

/*
	SECCIÓN DEL WHERE EN LA QUE SE LE AGREGAN CNDICIONALES AL WHERE 
*/

select * from usuarios where apellidos = 'Martinez';

/*
	Saca los registros que tengan el apellido Martinez
    Tambien se usa el operador de comparación
    Igual =
    distinto != 
    menor <
    mayor >
    menor o igual <=
    mayor o igual >=
    between Entre  between A and B
    in En
    is null  Es nulo
    is not null, no es nulo
    like, es un comidin y significa como
    not like no es como
    
*/

-- Ejemplos

select nombre, apellidos from usuarios where  year(fecha) = 2019;
/*
	la funcion year  nos extrae el año de la fecha
    Esta consulta nos muestra el nombre y apellido de los usuarios registrados en el año 2019
*/


select * from usuarios where year(fecha) != 2019 ;
/*
	Los usuarios que no se hayan registrado en otro año distinto al año 2019
*/


/*

	OPERADORES LOGICOS QUE SON EL 
    O 		OR
    Y		AND
    NO 		NOT
*/


select email from usuarios where apellidos like '%A%' and passwordd = 'prueba';

/*
	COMODINES EN EL OPERADORES % y el _
*/

/*
	Mostrar el eamil consulta que en cuyo apellido se muestre una letra A y su contrseña sea 1234
*/


select * from usuarios where apellidos like '%Mart%' and passwordd = 'prueba';
select email from usuarios where apellidos like '%A%' and passwordd = 'prueba';

/*
	COMODINES EN EL OPERADORES % y el _
*/

/*
	Mostrar el eamil consulta que en cuyo apellido se muestre una letra A y su contrseña sea 1234
*/


select * from usuarios where apellidos like '%Mart%' and passwordd = 'prueba';

/*
	Cuando el año es impar
*/

select * from usuarios where (year(fecha) %2 != 0);



/*
	Obtener los registro cuyo nombre tenga más de 5 letras y sa hayan registrado antes del 2020
    y mostarlos en mayuculas
*/

select upper(nombre), apellidos from usuarios where length(nombre) > 5 and  year(fecha) < 2020;


/*
	ORDENAR LOS CAMPOS 

*/


select * from usuarios order by fecha desc;

select * from usuarios order by id desc;

/*
	Ordena por el id de forma descendente
*/

-- select * from usuarios limit 1 ;


/*
Nos da un limte de busqueda de registros, es decir, nos limita la busqueda
*/




