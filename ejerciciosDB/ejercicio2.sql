# inserciones de datos para la base de datos

show databases;

use concesionario;

#coches

insert into coches values(null, 'Renault cliio', 'Renault', 12000, 13);

insert into coches values(null, 'Tesla model 3', 'Tesla', 300000, 20);
insert into coches values(null, 'Ford Fiesta', 'Ford', 20000, 3);
insert into coches values(null, 'Tesla model X', 'Tesla', 900000, 23);

select * from coches;

#grupos

insert into grupos values(null, 'Vendedroes A', 'Madrid');
insert into grupos values(null, 'Vendedroes B', 'Cuautla');
insert into grupos values(null, 'Vendedroes C', 'Cuernavaca');
insert into grupos values(null, 'Vendedroes D', 'CDMX');

select * from grupos;

-- # Vendedores 


-- # Alter table para  poder insertar los datos nulos
-- alter table vendedores modify jefe int(10);


describe vendedores;

insert into vendedores values (null, 1 , null ,'David', 'Lopez', 'Responsable de tienda', curdate(), 30000, 4 );

insert into vendedores values (null, 1, 13, 'Juan', 'Guerrero', 'Responsable de la tienda', curdate(), 30000, 4);

insert into vendedores values (null, 3, null, 'Jose', 'Rosas', 'Responsable de la tienda', curdate(), 30000, 4);
insert into vendedores values (null, 2, null,'Carlos', 'Franco', 'Responsable de la tienda', curdate(), 30000, 4);

insert into vendedores values (null, 3, 9 ,'Miguel', 'Martinez', 'Responsable de la tienda', curdate(), 30000, 4);

insert into vendedores values (null, 4, null,'Saul', 'Rios', 'Responsable de la tienda', curdate(), 30000, 4);

insert into vendedores values (null, 3, 4,'Pedro', 'sanchez', 'Responsable de la tienda', curdate(), 30000, 4);
insert into vendedores values (null, 3,13, 'Mariano', 'Ruiz', 'Responsable de ventas', curdate(), 20000, 3);

select * from vendedores;

-- describe clientes;

select * from vendedores;


insert into clientes  values (null, 4,'Construcciones Diaz','Alcobendas', '20000', curdate());

insert into clientes  values (null, 4,'Fruteria Diaz','Alcobendas', 24000, curdate());
insert into clientes  values (null, 6,'Bodega Aurrera','Alcobendas', 24000, curdate());
insert into clientes  values (null, 7,'Construcciones Diaz','Alcobendas', 24000, curdate());
insert into clientes  values (null, 9,'Construcciones Diaz','Alcobendas', 24000, curdate());
insert into clientes  values (null, 11,'Construcciones Diaz','Alcobendas', 24000, curdate());
insert into clientes  values (null, 13,'Construcciones Diaz','Alcobendas', 24000, curdate());


-- #Encargos

-- describe encargos;

select * from coches;

select * from clientes;

-- describe encargos;

insert into encargos values (null, 2, 2, 3, curdate());

insert into encargos values (null, 2, 2, 3, curdate());
insert into encargos values (null, 3, 1, 3, curdate());
insert into encargos values (null, 4, 3, 3, curdate());
insert into encargos values (null, 5, 4, 1, curdate());
insert into encargos values (null, 6, 4, 1, curdate());

select * from clientes;

select * from coches;

-- describe encargos;

select cantidad, nombre from encargos, clientes where encargos.cliente_id = clientes.id; 

-- Muestra el modelo y el usuario que compró los coches 

select nombre, modelo from encargos, clientes, coches where encargos.cliente_id = clientes.id and encargos.coche_id = coche_id;
