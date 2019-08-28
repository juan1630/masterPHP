<!DOCTYPE HTML>
<html lan="es">
    <head>
        <meta charset="utf-8" />
        <title>Subir archivos PHP</title>
    </head>
    <body>
        <h1>Subir archivos con PHP</h1>
        <form action="subir.php" method="POST" enctype="multipart/form-data">
            <input type="file" name="archivo">
            <input type="submit" value="Enviar" >
        </form>
        <h2> Listado de las imagenes </h2>

        <!-- INICIO DEL PHP -->
        <?php
        $gestor = opendir('./images');

        // Abrimos el directorio  de las imagenes y se guarda en la variable
        if($gestor):

            while(($imagen = readdir($gestor)) !== false):

                // Tener cuidado en esta parte ya que se debe de poner dobles parentecis 
                if( $imagen != '.' &&  $imagen != '..' ):
                   
                    echo "<img src='images/$imagen' width='200px' ><br/>";
                endif;

                // Se ordena por el nombre
            endwhile;
        endif;

        // Esta sintaxis es más limpia y clara para ser usada en los proyctos 

        ?>
        <!-- FIN DEL PHP -->
    </body>
</html>