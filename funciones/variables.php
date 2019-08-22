<?php

// VARIABLES LOCALES Y GLOBALES

/*** 
 * LAS VARIABLES GLOBALES SON LAS QUE SE DECLARAN DENTRO Y FUERA DE UNA FUCIÓN 
 * Y ESTAN DISPONIBLES PARA SU USO DENTRO Y FUERA DE LA FUNCION
*/

/**
 * LAS VARIABLES LOCALES SE DEFINEN DENTRO DE UNA FUNCION Y NOPUEDEN SER USADAS FUERA DE LA FUNCIÓN
 * A NO SER QUE SE HAGA UN RETURN, PPARA UTILIZAR SU VALOR, FUERA DE LA FUNCIÓN
 */


 $frase = 'Menos es más';

//  Esta es una variable local





function holaMundo (){
    global $frase;
    // Se indica que es una variable glogbal
    $year = 2019;

    return  $year;
}


// echo $year;

// Esta variable solo existe en el ambito de la funcion, por eso nos da el error 

echo holaMundo();



// FUNCIONES VARIABLES

function buenosDias () {
    return "Hola, buenos días";

}

function buenasTardes (){
    return "Hola buenas tardes";
}


function buenasNoches(){
    return "<h1>Hola buenas noches</h1>";
}

$horario = "buenasNoches";


echo $horario();


?>