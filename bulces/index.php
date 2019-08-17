<?php

// Bucle while, este bucle tiene  la caracterisitca de que itera la ejecucion de una serie de instrucciones
// la veces que sea necesario, hata que la condicion se cumpla


// Su estructura es la siguiente  while(condicion ){
// ejecuta estas instruccione 
// }
// si la condicion no se cumple entonces se sale y no se ejecuta más



$numero = 0;

while( $numero<=100) {
    echo "$numero";

    if($numero != 100){
        echo ",";
    }

    $numero++;
}

echo '<hr/>';


// la funcion isset comprueba si la varible funciona 

if(isset($_GET['numero'])) {
    $numero = (int)$_GET['numero'];
    // de esta forma se castea el dato que se recibe por la url
}else{
    $numero =1;
}

var_dump($numero);

// cuando se recibe un valor por la url es un string 
echo "<h1> TABLA DE MULTIPLICAR DEL NÚMERO $numero </h1>";

$contador = 0;

while($contador<=10){
    echo "$numero x $contador =". ($numero*$contador)."<br>";
    $contador++;
}


echo '<hr/>';

echo '<h2>BUCLE DO WHILE</h2>'; 

// este buclle es igual que el while solo que la condicon se evalua al fin del cuerpo del bucle
// esto nos dice que al menos una vez se va a ejecutar la instruccion 

// do{

// }while( condicion );


$edad = 14;
$contador = 1;

do {

    echo "Tienes acceso al local privado $contador <br/>";
    $contador++;
}while( $edad >= 18 && $contador <= 10 );




echo '<hr/>';

echo '<h2>BUCLE FOR</h2>'; 


// for( exp inicial; condicion;  incremento  ) {
    // inicializa una variable que es el contador, el incremento del contador 
// }


$resultado = 0;

for( $i = 0; $i <= 100; $i++ ){
    $resultado += $i;
}

echo"<h1> $resultado </h1>";

?>