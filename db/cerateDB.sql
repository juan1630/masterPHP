
# Sentencias Basicas dentro de mysql
# CREACION DE LA BASE DE DATOS 
# Cerrar las instrucciones con el ";" ya que significa que la sentecia continua

show databases;
# Nos devuelva las tablas que existen dentor

create database prueba;
# craer la base de datos con el nombre prueba

use prueba;
# Se pone el uso la base de datos 

show tables;
# Nos muestra las tablas de la base de datos que está en uso

drop database prueba;
# Elimina la base de datos con el nombre que se especifica

# Creacion de tablas dentro de la base de datos, lista para los ejercicios

use blogMaster;

create table usuarios(
	id int(11) not null auto_increment,
    nombre varchar(100) not null,
    apellidos varchar(255) default'Hola que tal',
    email varchar(100) not null,
    password varchar(255),
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
);

/*

Los nombre de las tablas deben de ir en plural por la cantidad de datros que se van a almacenar
TIPOS DE DATOS 

int para numeros enteros (n° de caracteres)alter
integer (Entero)
varchar (alfanumerico/ string)
char (n° de caracteres )
float (cifras, numero de decimales) 
date ()

Strings mas grandes

text 65535
medium text, 16 millones de caracteres
long text 4 billones de caracteres

Resticciones
not null que este campo no debe de ir nuulo 

default por defecto rellena el campo con el valor que se le asigna al inicio

  CONSTRAINT pk_usuarios PRIMARY KEY(id)
  Se define el auto increment ,los uato_increment son solo para las llaves primarias
*/

show tables;

desc usuarios;
/*
	Nos da una descripcion de la tabla y el tipo de datos que se 
	estan usando

    ELIMINACION DE LAS TABLAS 

*/

drop table usuarios;
