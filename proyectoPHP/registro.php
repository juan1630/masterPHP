<?php 

require_once 'includes/conexion.php';


session_start();

if(isset($_POST)){

    // Recogemos los valores del formulario

    $nombre = isset($_POST['nombre']) ? $_POST['nombre'] : false;
    $apellidos = isset($_POST['apellido']) ? $_POST['apellido'] : false;
    $email = isset($_POST['email']) ? $_POST['email'] : false;
    $pass = isset($_POST['password']) ? $_POST['password'] : false;



    // ARRAY DE LOS ERRORES 

    $errores = array();


    // VALIDAR LOS DATOS ANTES DE GUARDARLOS EN LA DB


    // Valida el campo nombre

    if(!empty($nombre) && !is_numeric($nombre) && !preg_match("/[0-9]/", $nombre)){
        $nombre_validate = true;
        echo 'El nombre es valido';
    }else{
        $nombre_validate = false;
        $errores['nombre'] = "El nombre no es valido";
         echo $errores; 
    } 
    // VALIDA EL CAMPO APELLIDOS

    if(!empty($apellidos) && !is_numeric($apellidos) ){

        // && !preg_match("/[0-9]/", $apellidos)

        $apellidos_validate = true;
        echo 'Los apellidos son valido';
    }else{
        $apellidos_validate = false;
        $errores['apellidos'] = "Los apellidos no son validos";
        echo $errores;
    }

    // VALIDA EL CAMPO EMAIL

    if(!empty($email) && filter_var($email,FILTER_VALIDATE_EMAIL) && !preg_match("/[0-9]/", $nombre)){
        $email_validate = true;
        echo 'El email es valido';
    }else{
        $email_validate = false;
        $errores['email'] = "El email no es valido";
         echo $errores; 
    }


    // VALIDAR EL CAMPO DE LA CONTRASEÑA 


    if(!empty($pass) ){
        $pass_validate = true;
        echo 'La conraseña es valido';
    }else{
        $pass_validate = false;
        $errores['pass'] = "La constraseña está vacia";
         echo $errores; 
    }

    $guardar_usuario= false;


    if(count($errores) == 0){
            // SI NO HOY ERRORES INSERTAMOS EL USUARIO EN LA DB

            $guardar_usuario = true;

            // cifrar la constraseña 

            $password_segura = password_hash($pass, PASSWORD_BCRYPT, ['cost' => 4 ]);
            // var_dump($password_segura);
            // die();


            $sql = "INSERT INTO usuarios VALUES (null, $nombre, $apellidos, $email, $pass, CURDATE())";
            $guardar = mysqli_query($db, $sql);
            if($guardar){
                $_SESSION['compleado'] = "El registro se ha completado con exito";

            }else{ 
                $_SESSION['errores'] = "Fallo al insertar el usuario ";
                
              }



    }else{
        $_SESSION['errores'] = $errores;
    } 
    
}
header('Location: index.php');


?>