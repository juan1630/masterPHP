/*
	DML lenguaje de manipulacion de datos 
    
    Este lenguaje nos ayuda a la represetancio de los datos, tanto como la creación de los datos. la eliminacion, la actualizacion    
*/

use blogmaster;


select * from usuarios;

/*
INSERTAR REGISTROS
desc usuarios;

*/ 


insert into usuarios values (null,'Juan', 'Patrón','josejuanpatron1630@gmail.com','prueba','2019-08-28');

/*
	Los paramteros se deben de pasar conforme al orden de la tabla
    la fecha debe de ir en el formato americano
*/

insert into usuarios values (null, 'Carlos', 'Martinez', 'carlos@gmail.com','prueba', '2019-08-29');

/*
	INSERTAR FILAS CON VARIAS COLUMNAS
    
    para esto es necesario modificar la estructura de las tablas, de forma que acepte los valores nulos o datos vacios
    
*/
