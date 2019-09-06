create database  aprendiendoPHP;


use aprendiendoPHP;



create table notas ( id int(255) auto_increment not null ,
				titulo varchar(255), 
                descripcion mediumtext, 
                color varchar(255),
                constraint pk_notas primary key (id)) engine=InnoDB;


show tables;



insert into notas values (null, 'Nota 1', 'Hacer los ejercicios de SQL', 'red');

insert into notas values (null, 'Nota 2', 'Hacer los ejercicios de PHP', 'blue');
insert into notas values (null, 'Nota 3', 'Hacer los ejercicios de html', 'green');
insert into notas values (null, 'Aprendiendo PHP', 'Unmmaster para aprender PHP con Victor Robles', 'yellow');




select * from notas;