<?php


// FUNCIONES PARA LOS ARRAYS

$trabajadores = ['Juan', 'Katia', 'Carlos', 'Alfredo'];


asort($trabajadores);

// ordena los valores de forma alfabetica

var_dump( $trabajadores );




// este lo hace de forma inversa a la del asort

arsort($trabajadores);


var_dump( $trabajadores );


// añadir elementos a un array


$trabajadores[] = "José";


array_push( $trabajadores, 'Cesar' );



// elimincación de un elemento del  array 


array_pop( $trabajadores);

//Quitar un indice en concreto para eso se usa la funcion unset

unset($trabajadores[2]);


var_dump( $trabajadores );


// sacar un elemento aleatorio del array

$indice = array_rand($trabajadores);


echo $trabajadores[$indice];



//darle la vuelta a un array 



array_reverse($trabajadores);


var_dump($trabajadores);

// buscar en el array buscamos en el array


$resultado = array_search('Katia', $trabajadores);


var_dump($resultado);


// cuenta el número de elementos del array

echo count($trabajadores);


// var_dump que nos da los indices de los arrays


?>