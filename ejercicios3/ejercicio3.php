<!-- Hacer una calculadora en un formulario con 4 botones  -->
<!-- Suma, resta,  multiplicacion y division -->

<?php

if(isset($_POST['n1']) && isset($_POST['n2']) ){

    $resultado = false;

    if(isset($_POST['sumar'])){
        $resultado = "El resultado es: ".($_POST['n1'] + $_POST['n2']);
    }

    if(isset($_POST['restar'])){
        $resultado = "El resultado es: ".($_POST['n1'] - $_POST['n2']);
    }

    if(isset($_POST['multiplicar'])){
        $resultado = "El resultado es: ".($_POST['n1'] * $_POST['n2']);
    }

    if(isset($_POST['dividir'])){
        $resultado = "El resultado es: ".($_POST['n1'] / $_POST['n2']);
        // Se agrupa la expresión matematica por medio del parentecis
    }

}


?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Calculadora con PHP</title>
    </head>
    <body>
        <h1> Calculadora PHP</h1>
        <form action="" method="POST">
            <label for="n1" >Número 1</label><br/>
            <input type="number" name="n1" /><br/>
            <label for="n2"> Número 2 </label><br/>
            <input type="number" name="n2" /> <br/>

            <input type="submit" value="Sumar" name="sumar"/><br/>
            <input type="submit" value="Restar" name="restar" /> <br/>
            <input type="submit" value="Dividir" name="dividir" /><br/>
            <input type="submit" value="Multiplicar" name="multiplicar" />           
        </form>
    </body>
</html>

<?php

if($resultado != false):

    echo "<h2> El resultado es: $resultado </h2>";

endif;

?>