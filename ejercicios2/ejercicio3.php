<?php 

// Comprobar si una variable esta vacia rellenarla con texto en minusculas y mostrarlo en mayusculas y negritas 


$texto;


if(empty($texto)){
    $texto = "hola mundo jejeje";
    $textoMayus = strtoupper($texto);

    echo "<strong>".$textoMayus."</strong>";

}else {
    echo "La variable tiene este contenido dentro";
}

?>