<?php

/* 

Funciones un conjuto de oredenes que se agrupa y se identifican por un nombre  
Se pueden llamar n numero de veces, reduciendo el codigo
que hace mas mantenible el codigo y mas legible 

  funcion nombreFuncion($paramentro) {
       conjunto de ordenes
    los parametros estan disponibles dentro de la funcion 
    por lo que solo se pueden usar dentro de la misma
}

nombreDeLaFuncio(); y el paso de parametros 
nombreDeLaFuncion($param);

*/

function muestraNombres() {
    
    echo "<hr/>";
    echo "Juan Patrón <br/>";
    echo "Katia Amaro <br/>";
    echo "Emma Guerrero <br/>";
    echo "Alicia Amaro <br/>";
}


// INVOCAMOS LA FUNCION
muestraNombres();
muestraNombres();


function tabla($numero){
   // var_dump( $numero );
    // recibe la variable con la que se va a trabajar dentro de la fucnio
    echo "<h3>TABLA DE MULTIPLICAR DEL NÚMERO $numero</h3>";
    for($j=0; $j <= 10; $j++){
        $operacion = $numero*$j;

        echo "$numero x $j = $operacion <br/>";
    }
}


// tabla(8);


// if( isset( $_GET['numero'] ) ){
//     tabla( $_GET['numero'] );
// }else{
//     echo 'No hay número para  multiplicar';
// }



// for( $i=1; $i <= 10; $i++ ){
//     tabla($i);
// }



// PASO DE VARIOS PARAMETROS A UNA FUNCION
echo '<hr/>';
echo '<h2>PASO DE VARIOS PARAMETROS A UNA FUNCIÓN</h2>';

function calculadora($numero1, $numero2) {
    // Conjunto de instrucciones que se van a ejecutar
    $suma = $numero1 + $numero2;
    $resta = $numero1 - $numero2;
    $multiplicacion = $numero1 * $numero2;
    $division = $numero1 / $numero2;


    echo "Suma es igual a $suma <br/>";
    echo "Resta es igual a $resta <br/>";
    echo "Multiplicacion es igual a $multiplicacion <br/>";
    echo "Division es igual a $division <br/>";

}

calculadora(30, 40);
calculadora(300, 20);


// PASO DE  PARAMETROS OPCIONALES A UNA FUNCION
echo '<hr/>';
echo '<h2>PASO DE PARAMETROS OPCIONALES A UNA FUNCIÓN</h2>';

function calculadora2($numero1, $numero2, $negritas = false) {
    // Conjunto de instrucciones que se van a ejecutar
    $suma = $numero1 + $numero2;
    $resta = $numero1 - $numero2;
    $multiplicacion = $numero1 * $numero2;
    $division = $numero1 / $numero2;

    // if($negritas){
    //     echo '<h1>';
    // }
    // echo "Suma es igual a $suma <br/>";
    // echo "Resta es igual a $resta <br/>";
    // echo "Multiplicacion es igual a $multiplicacion <br/>";
    // echo "Division es igual a $division <br/>";

    // if($negritas){
    //     echo '</h1>';
    // }

    if( $negritas ){
        $cadenaTexto="<h1>";
    }

    $cadenaTexto.= "Suma es igual a $suma <br/>";
    $cadenaTexto.= "Resta es igual a $resta <br/>";
    $cadenaTexto.= "Multiplicacion es igual a $multiplicacion <br/>";
    $cadenaTexto.= "Division es igual a $division <br/>";

    if($negritas){
        $cadenaTexto.="</h1>";
    }

    return $cadenaTexto;

}

echo calculadora2(23, 45, true) ;



// RETORNO DE UNA FUNCION
echo '<hr/>';
echo '<h2>RETORNO DE UNA FUNCIÓN</h2>';
// Las funciones no deben de imprimir nada en pantalla solo deben de retornar los valores 

function devuelve ($nombre) {
    return "Hola y bienvenido $nombre";
}

echo "<h3>".devuelve("Juan")."</h3>";



// EJECUTAR VARIAS FUNCIONES EN LA MISMA FUNCIÓN 
echo '<hr/>';
echo '<h2>RETORNO DE UNA FUNCIÓNRETORNO DE UNA FUNCIÓN</h2>';
// Las funciones no deben de imprimir nada en pantalla solo deben de retornar los valores 

function getNombre($nombre) {
    $texto = "El nombre es: $nombre";
    return $texto;
}

function getLastName($lastName ){
    $texto = "El appelido es: $lastName"; 
    return $texto;
}

function imprimeNombre($nombre, $apellido){
    $nombre .= "<h3>";
    $nombre .= getNombre($nombre);
    $nombre .= getLastName( $apellido);
    $nombre .= "</h3>";


    return $nombre;

}



echo imprimeNombre("José", "Patrón");

?>