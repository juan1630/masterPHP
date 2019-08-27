<?php

// Hacer un array que tenga 8 numeros y recorer el array y mostar su logitud



// funciones 

// Se crea la función porque se ahorra codigo en este caso ya que se usa para mostra el array

function mostarArray ($num){

    $resultado = "";

    foreach ($num as $numero) {
  
        $resultado .= $numero."<br/>";
    
    }

    return $resultado;
    
}


$numeros = [1,2,3,49,5,6,7,8];

echo "<h1>Recorer y mostrar el array </h1>";

echo mostarArray($numeros);

echo "<h2>Ordenar los numeros</h2>";
asort($numeros);

echo mostarArray($numeros);


echo "<h2>Mostart la longitud del array</h2>";

echo count($numeros)."<br/>";


if(isset($_GET['numero'])){
    
    $numBusqueda = $_GET['numero'];
}


echo "<h2>Busca un valor en el array el numero $numBusqueda</h2>";

$search = array_search($numBusqueda,$numeros);

if(!empty($search)){
    
    echo "El numero buscadio en el array existe ".$search;
}else{
    echo "El número no existe en el array";

}




?>