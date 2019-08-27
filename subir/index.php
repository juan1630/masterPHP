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
    </body>
</html>