<?php

// ARRAYS 


// Son una colección de valores con un indice almacenado 
// Es una coleccion de datos y variables

// Se accede a cada una de ella por medio de in indice numerico o alfabetico bajo un unico nombre
// para acceder a esos valores se usa un idic numerico o alfanumerico

$pelicula = 'Batman';


$peliculas = array('Batman', 'Spiderman', 'El señor de los anillos');


var_dump( $peliculas[1] );


$cantantes = ['James hetfield', 'Juan Gabriel'];


var_dump($cantantes);


// Los arrays se pueden definir de las dos formas 


echo $peliculas[0];
echo $cantantes[0];


// El bucle foreach esta diseñado para recorrer los arrays 

echo "<h1>LISTADO DE LOS CANTANTES</h1>";


echo "<ul>";

foreach ($cantantes as $artista) {
    //  del array de los cantantes se extrae el valor y se guarda en la varibale artistas
    echo "<li>".$artista."</li>";
}


echo "</ul>";

// ARRAYS ASOCIATIVOS

// los indices de los arrays tambien son alfnumericos 

// Estos arrays se pusan mucho cuando se pasan parametros por los metodos get y post

$personas = array( 'nombre' =>  'Juan',
                    'apellido' => 'Patrón' );


// la flecha asigan el valor al indice 



var_dump( $personas );
echo $personas['nombre'];



// ARRAY MULTIDIMENSIONAL 

// Es un array cn un array adentro


$contacto = array( array(
    'nombre' => 'Juan',
    'numero' => 767868678
),

    array( 'nombre'  => 'Salvador',  'numero'=> 3252523  )
);


// var_dump( $contacto );

echo "<hr/>";

echo $contacto[0]['nombre'];

foreach ($contacto as $key => $contact) {
    var_dump($contact['nombre']);
}


?>
