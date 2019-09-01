/*
	VISTAS 
    
    Son unas consultas almacenada en la DB se utiliza como una tabla virtual y no almacena datos y utiliza osciaciones y los datos de las 
    tablas originales de forma que siempre se mantiene actualizadas
    a minora la carga para el servidor y ahorra el trabajo de forma que se accede de una forma mas rapida
*/


create view entradas_con_nombres as 
select e.id, e.titulo, u.nombre as 'Autor' 
from entradas e 
inner join usuarios as u on e.usuario_id = u.id 
inner join categorias c on e.categoria_id = c.id;

show tables;


/*
	No existe un comando para ver las vistas 
    ya que es una tabla virtual, lo que optmiza mucho la consukta de los datos
*/

select * from entradas_con_nombres;

drop view entradas_con_nombres;

show tables;

