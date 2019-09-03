
-- Diseñar y crear la base de datos de un concensionario 

/*
	Creaci+on de la DB 
*/
 
-- create database if not exists concesionario;

show databases;

use concesionario;


/*
	Se crea la tabla de coches 
*/

-- create table coches( id int(10) auto_increment not null,
-- 	modelo varchar(100) not null,
--     marca varchar(50),
--     precio int(20)not null,
--     stock int(255) not null,
--     constraint pk_coches primary key(id)
-- ) engine=InnoDB;

/*
	Tabla de grupos 
*/

-- create table grupos(
-- 	id int(10) auto_increment not null ,
-- 	nombre varchar(100) not null,
--     ciudad varchar(100),
--     constraint pk_grupos primary key(id)
-- ) engine=InnoDB;

/*
	Se crea la tabla de vendedores, con relacion al grupo
*/

-- create table vendedores( id int(10) auto_increment not null,
-- 			grupo_id int(10) not null,
--             jefe int(10) not null,
--             nombre varchar(100), 
--             apellido varchar(150),
--             cargo varchar(50), 
--             fecha date, 
--             sueldo float(20, 2),
--             comision float(10,2),
--             constraint pk_vendedores primary key(id),
-- 			constraint fk_grupo foreign key(grupo_id) references grupos(id),
--             constraint fk_vendedorJefe foreign key(jefe) references vendedores(id)
--             )engine=InnoDB;
            
            
	/* 
		Creacion de la tabla de clientes
    */
    
    
    -- create table clientes (id int(10) auto_increment not null,
    -- vendedor_id int(10),
    -- nombre varchar(150),
    -- ciudad varchar(100),
    -- gastado float(50,2),
    -- -- fecha date,
    -- constraint pk_clientes primary key(id),
    -- constraint fk_cliente_vendedor foreign key(vendedor_id) references vendedores(id)
    -- ) engine=InnoDB;
    
    
    /*
		Tabla de encargos 
    */
    
    -- create table encargos (
	-- 	id int(10) auto_increment not null,
    --     cliente_id int(10) not null,
    --     coche_id int(10) not null,
    --     cantidad int(100),
    --     fecha date,
    --     constraint pk_encargos primary key (id),
    --     constraint fk_encargo_cliente foreign key(cliente_id) references clientes(id),
    --     constraint fk_encargo_coche foreign key(coche_id) references coches(id)
    -- ) engine=InnoDB;
            
            
    --         show tables;
            
            /*
				Se creó la base de datos corectamente 
            */