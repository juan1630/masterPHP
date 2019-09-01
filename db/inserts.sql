show databases;

use blogmaster;


/*
	INSERCCIONES DE DATOS 

*/

-- show tables;

-- desc entradas;

-- desc categorias;

insert into categorias values (null, 'Acción');
insert into categorias values (null, 'Rol');
insert into categorias values (null, 'Deportes');

select * from categorias;

select * from usuarios;

select * from entradas;

insert into entradas values (null, 2, 1, 'Novedades del GTA-V', 'Review del gta-v', curdate() );


insert into entradas values (null, 2, 2, 'Review de LOL', 'Review acerca de LOL', curdate() );
insert into entradas values (null, 2, 1, 'Review del call of duty', 'Review del Calla of duty', curdate() );
insert into entradas values (null, 2, 3, 'Review de Injustice', 'Review del Injustice', curdate() );



insert into usuarios values (null, 'Juan', 'Perez', 'juanperez@gmail.com', '123456', curdate());

insert into usuarios values (null, 'José', 'Guerrero', 'joseGuerrero@gmail.com', '123456', curdate());

insert into usuarios values (null, 'Katia', 'Lahio', 'katy@gmail.com', '123456', curdate());

select * from usuarios;

select * from categorias;

insert into entradas values (null, 3, 3, 'Review de pes', 'Review del pes', curdate() );
insert into entradas values (null, 4, 1, 'Review de Gears of war', 'Review del Gears of war', curdate() );
insert into entradas values (null, 5, 2, 'Review de Age of mitholgy', 'Review del Age of mitholgy', curdate() );

/*
	Inserción de los datos en la tabla de entradas  
*/

select * from entradas;
