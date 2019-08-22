<?php 

// FUNCIONES PREDEFINIDAS



$nombre = "Juan Patrón";


var_dump($nombre);

// Muy util para debuggear


echo date('d-m-y');
// tambien saca los minutos, horas y segundos, formateando la fecha ver la documentación los formatos completos

echo "<br/>";


echo time();

// Fecha en forma unix, una fecha que nunca se repetir


// MATEMATICAS

echo "Raiz cuadrda de un número".sqrt(10);

echo "<br/>";


echo "Numero aleatorio: ".rand();


// Tambien se le pueden pasar los intervalos del numero aleatorio

echo "<br/>";


echo "Número PI: ".pi();

echo "<br/>";
echo "Redondear: ".round(7.89767832, 2);

// El seugundo parametro indica el numero de cifras con el que queremos que trabaje 



// MÁS FUNCIONES 



echo gettype($nombre);

// Nos dice el tipo de variable



echo "<br/>";


if( is_string($nombre) ){
    echo "Esa variable es un string";

}

echo "<br/>";



if(is_float($nombre)){
    echo  "La variable nombre es un número con decimales";

}else{
    echo "No es un float";

}


echo "<br/>";




// la funcion isset comprueba que la variable exista 



if( isset($edad) ){
    echo "La varable si existe";
}else{
    echo "La variable no existe";
}



// la funcon trim, nos limpia el contenido de la frase, nos elimina los espacios en blanco

$frase2 = "            Hola        ";

// Nos srive demasiado con los formualrios, para limpiar los datos que nos llegan del html y asi tener menos caracteres en la bd

echo "<br/>";

var_dump( trim($frase2) );



echo "<br/>";


// ELIMINAR VARIABLES O INDICES DE ARRAYS

$year = 2020;



unset($year);

// Elimina la variabel del codigo, tanto el valor como su nombre



echo $year;

// Comprobar variables vacias


$texto;



if(empty($texto)){
    echo "La variable esta vacia";
}else{ 
    echo "No esta vacia <br/>";
}



// strlen nos calucula cunatos carectres tiene  la caxdena de texto


$cadena = "12345";


echo strlen($cadena);


echo "<br/>";



// Encontar carater 


$frase3 = "la vida es bella";



echo strpos($frase3, "vida");


echo "<br/>";


// remplazar contenido de un texto 



$frase3= str_replace("vida", "moto", $frase3);



echo $frase3;


echo "<br/>";


echo strtolower($frase3);
// minusculas 

echo strtoupper($frase3);
//mayusculas 

?>
