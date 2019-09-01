

select titulo from entradas group by categoria_id;


/*
Agrupa los registros todas las filas en base a una columna, en este caso es por categoria_id
obtiene las entradas que tiene la categoria, muestra uno de cada categoria
*/



select count(titulo) as 'Entradas', categoria_id from entradas group by categoria_id;

/*
	Muestra una columna con el número de entradas por categoria y otra columna con el ID de la categoria
*/


/*
	Con las consulta de agrupamiento no es bueno el uso del where ya que actua en base a una columna o condicionales
    para crear una condicion en la consulta de agrupamiento
    Agrupamientos mayores a 4
    
    having es el mismo que el where pero para las consultas de agrupamiento
*/

select count(titulo) as 'Entradas', categoria_id from entradas group by categoria_id having count(titulo) >= 4;

/*
	Nos devulve los agrupamientos myores o iguales a 4
*/


select count(titulo) as 'Entradas', categoria_id from entradas group by categoria_id having count(titulo) >= 3;

/*
	AVG saca la media 
	count contar el número de elementos
	max, devueva el valor maximo del grupo
	min el valor minimo del grupo
	sum sumar todo el contenido del grupo
*/
select * from entradas;

/*	MEDIA DE LAS ENTRADAS
	Sirve para sacar la media de un producto y de los precios 
*/

select avg(id) as 'MediaEntradas' from entradas; 


/*
	Saca el id más alto y el titulo
*/

select max(id) as 'MAXID', titulo from entradas; 


select min(id) as 'MAXID', titulo from entradas; 
/*
	El menor id
*/

select sum(id) as 'SumaId', titulo from entradas; 


/*
	Sumar todos los ids de las entradas
*/
