show databases;
use blogmaster;

/*

	CREACIO DE LA TABLA USUARIOS PARA EL BLOG	
*/


CREATE TABLE usuarios(
	id int(11) auto_increment not null,
    nombre varchar(100) not null,
    apellidos varchar(100) not null,
    email varchar(255) not null,
    passwordd varchar(255) not null,
    fecha date not null,
    CONSTRAINT pk_usuarios PRIMARY KEY (id),
    constraint uq_email unique(email)
) engine=InnoDB;

/*	 
	CONSTRAINT pk_usuarios
    constraint uq_email unique(email)
    hace que el email se unico no se pueda repetir 
*/


/*
	primero crear las tablas que no tiene relación
*/

CREATE TABLE categorias(
id int(255) auto_increment not null,
nombre varchar(100),
CONSTRAINT pk_categorias PRIMARY KEY(id)
)engine=InnoDB;


CREATE TABLE entradas(
id int(255) auto_increment not null,
usuario_id int(255),
categoria_id int(255),
titulo varchar(255),
descripcion mediumtext,
fecha date not null,
CONSTRAINT pk_entradas primary key(id),
constraint fk_entrada_usuarios foreign key(usuario_id) references usuarios (id),
constraint fk_entrada_categoria foreign key(categoria_id) references categorias (id) on delete cascade
)engine=InnoDB;


/*
	usuario_id,
	categoria_id,
 
 manera correcta de especificar las llaves foranes, 
 se deben de especifiacr el mismo tamaño de la llave foranea como en su tabla donde fue creada
 
 
constraint fk_entrada_categoria foreign key(categoria_id) references categorias (id) 
 Se define una clave foranea en la que se hace una referencia a la tabla que se va a relacionar 
 
 engine=InnoDB 
 Se define el motor de la base de datos, hace un mayor rendimiento de las tablas
 Casi siempre se usa este motor en las bases de datos
 
 
 constraint fk_entrada_categoria foreign key(categoria_id) references categorias (id) on delete cascade
 se borra en casda 
 
 constraint fk_entrada_categoria foreign key(categoria_id) references categorias (id) on update cascade
 se actualiza en cascada

constraint fk_entrada_categoria foreign key(categoria_id) references categorias (id) on delete cset null 
cuando se borre la categoria se ponga en null o default

constraint fk_entrada_categoria foreign key(categoria_id) references categorias (id) on delete no action
no haga nada 
*/

show tables;