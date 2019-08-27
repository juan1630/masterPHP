<!-- Aca se porcesa el formulario por medio de la variavle super global $_FILE -->

<?php

$archivo = $_FILES['archivo'];
$nombre = $archivo['name'];
$tipo = $archivo['type'];

if($tipo === "image/jpg" || $tipo === "image/jpeg" ||  $tipo === "image/png" || $tipo === "image/gif" ){

    // Guardado de la imagen

    if(!is_dir('images')){
        mkdir('images', 0777);
        // Esta funcion crear el directorio de la imagenes
    }

    move_uploaded_file($archivo['tmp_name'], 'images/'.$nombre);
    echo "<h1>Imagen subida correctamente</h1>";
    header("Refresh:5; URL=index.php");

}else{
    header("Refresh:5; URL=index.php");
    // Con esta funcion lo que se hace es que la pagina se refresca despues de un cierto tiempo, que se 
    // especifica en el Refresh

    echo '<h1>Sube una imagen con un formato adecuadi por favor...</h1>';
}

var_dump($archivo);


die();


?>