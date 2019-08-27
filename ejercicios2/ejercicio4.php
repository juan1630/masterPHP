<?php 

// Crear un script en php que tenga 4 variables y que imprima un mnasaje segun el tipo de variable


$matriz = ['Hola mundo', 88 ];
$titulo = "Master en php"; 
$entero = 90;
$boole = true;


if( is_string($matriz) ){
    echo '<h1>El array es un array</h1>';
}

if(is_string($titulo)){
    echo "<h1> $titulo </h1>";
}

if(is_integer($entero)){
    echo "<h1> $entero </h1>";
}

if(is_bool($boole)){
    echo "$boole";
}

?>