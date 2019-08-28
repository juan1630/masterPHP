<?php 

// // Debe de tener una funcion, esta funcion debe de validar el email con filter_var
// recoger la variable por get 
// mostrar el resultado 

function validarEmail( $email ){
    $status = 'No valido';

    if( !empty($email) && filter_var($email, FILTER_VALIDATE_EMAIL) ){
        $status = 'Valido';
    }
    return $status;
}


if(isset($_GET['email'])){
    echo '<h1>'.validarEmail($_GET['email']).'</h1>';
}else{
    echo "Pasa por get email";
}

?>