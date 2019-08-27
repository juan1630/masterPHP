<?php 


/* 

Escribir un programa que añada valore a un array mientras su logitud sea menor a 120 y mostarlo por pantalla

*/




$coleccion = [];


for( $i=0; $i <= 120; $i++){
    array_push($coleccion, "Elemto". $i);
}


var_dump($coleccion);
echo $coleccion[45];

?>