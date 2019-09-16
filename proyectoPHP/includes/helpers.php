<?php 


// No hace falta hacer el session start ya que importa en el index y se ejecuta como un solo archivo

function showErrors ($errores, $campo) {

    $alerta  = '';

    if(isset($errores[$campo]) && !empty($campo) ){

        $alerta = "<div class='alerta alerta-error'>.$errores[$campo].</div>";
        return $alerta;
    }


}



function deleteErrors() {
    $_SESSION['errores'] = null;

    $borrado = session_unset($_SESSION['errores']);
    return $borrado;
}


?>