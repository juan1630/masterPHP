<?php 

// Crear una sesio que aumente su valor en uno o disminuya em funcion a un parametro 
// get  counter esta a o  a cero


session_start();


if( !isset($_SESSION['numero']) ){
    $_SESSION['numero'] = 0;
    // Se inicializa el valor de la variable session 
}
if( isset($_GET['counter']) && $_GET['counter'] == 1 ){
    $_SESSION['numero']++;
}


if( isset($_GET['counter']) && $_GET['counter'] == 0 ){
    $_SESSION['numero']--;
    if( $_SESSION['numero'] <= 0 ){
        return;
    }
}



?>

<h1> El valor de la session es <?=  $_SESSION['numero']  ?> </h1>
<a href="ejercicio1.php?counter=1"> Aunmenter el valor en 1 </a>
<br/>
<a href="ejercicio1.php?counter=0"> Disminuir el valor en 1 </a>
