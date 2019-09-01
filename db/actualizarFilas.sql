/*
	MODIFICAR FILAS 
*/


select * from usuarios;

update usuarios set fecha = curdate() where id = 1;

/*
	Tener cuidado cuando se hagan las actualizaciones, se debe de poner el where al igual que en los deletes
*/
