<?php 

// En este archivo nos vamos a conectar a MYSQL

// Usa la BD de aprendiendoPHP

// En este master se usa mysqli, pero lo haré por pdo tambien


$conexion = mysqli_connect('localhost', 'jose', 'eltodasmias16', 'aprendiendoPHP');

    // Host la url, la ip o el localhost del servidor 
    // User el usuario de la DB
    // La constraseña con la que se inicia en la DB
    // El nombre de la DB 
    // PORT El puerto de conexion

    // Comprobar si le conexion es correcta 

    if( mysqli_connect_error($conexion)){
        echo 'La conexion a la DB ha fallado'. mysqli_connect_error; 
    } else {
        echo 'La conexion se realizó exitosamente'; 
    }

    // Consulta para cnfigurar la condificacionde los caracteres 


    mysqli_query($conexion, "set names utf-8");


   $query = mysqli_query($conexion, "SELECT * FROM notas");
    // var_dump($query);
    // // Nos devuelve los tipos de datos 
    
    // Un array asociativo

    
    while ( $nota =  mysqli_fetch_assoc($query) ){
        // var_dump($nota);

        echo '<h2>'.$nota['titulo'].'</h2>';
        echo '<p>'.$nota['descripcion']. '</p>';
        // Se itera cada uno de los resultados  que hay en el array
   
    }
    
// insertar un dato

    $sql = "insert into notas values (null, 'Nota 4', 'Nota desde PHP', 'green' )";

    $insert = mysqli_query($conexion, $sql);

    if($insert){
        echo "La insercion se hizo correctamente". "<br/>";
    }else {
        echo "Error:".mysqli_error($conexion);
    }


?>