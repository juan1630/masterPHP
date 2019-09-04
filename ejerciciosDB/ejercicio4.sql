-- En esta seccio se muestran los ejercicios del 3 al 8 de la parte de ejercicios de SQL

-- show databases;

-- use concesionario;


/*
	Visualizar el nombre y los apellidos de los vendedores en una misma collumna y el día de la semana
    en la que se registraron
*/

-- describe vendedores;

select concat(nombre, ' ', apellido), dayname(fecha) from vendedores; 
 

-- el concat nos concatena el nombre y el apellido, se le paso un string vacio
-- y se usa la funcion dayname para obtener el nombre del día de la semana


/*
Mostrar el nombre y el sallario con cargo de ayudante de tienda
*/

-- describe vendedores;

select nombre ,sueldo from vendedores where cargo ='ventas';


/*
visualizar todos los coches en cuya marca exista la letra 'A' y que empiecen por la letra 'F'
*/

select * from coches;

select * from coches where marca like '%a%' and modelo like '%f%';


-- EJERCICIO NÚMERO 9

/*
	Mostrar todos los vendedores del grupo 2, ordenados por salario de mayor a menor
*/  


select * from vendedores;

select * from vendedores where grupo_id = 1 order by sueldo desc;



-- EJERCICIO NÚMERO 10

/*
	Visualizar los apellidos de los vendedores, su fecha y su grupo ordenados por fecha desc y limitarlo a los 4 ultimos 
*/

-- select apellido, fecha, id from vendedores  order by fecha desc  limit 4


-- EJERCICIO NÚMERO 11

/*
	Visualizar el cargo de los vendedores y el número de vendodres que hay en cada cargo
*/
select cargo, count(id) from vendedores group by cargo;
 

-- Se agrega el GROUP by para que muestre cada uno de los cargos que hay 

-- EJERCICIO 12 
/*
Conseguir la masa salarial anual del consecionario
*/

select sum(sueldo) as 'Total sueldo' from vendedores; 


-- EJERCICIO NÚMERO 13

/*
	Sacra la media de sueldos entre todos los vendedores por grupo
*/

select avg(sueldo), grupo_id from vendedores group by grupo_id;


--  