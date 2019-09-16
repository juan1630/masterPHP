
<?php require_once 'includes/helpers.php'; ?>


<?php 
    var_dump($_SESSION);
?>

<!-- Inicio del sidebar -->

        <aside id="sidebar" >
        <?php if(isset( $_SESSION['errores'] )): ?>
            <?php var_dump( $_SESSION['errores']  ) ?>
            <?php endif; ?>
                <div id="login" class="bloque">
                <h3>Indetificate</h3>
                <form method="post" action="login.php">
                    <label for="email">Email:</label>
                    <input type="email" name="email" placholder="Ingresa tu email"/>

                    <label for="pass">Contraseña:</label>
                    <input type="password" name="password" placholder="Ingresa tu constrasela"/>

                    <input type="submit" value="Enviar"/>
                </form>
            </div>

            <div id="registro" class="bloque">
                <h3>Registrate</h3>

                <?php
                if(isset($_SESSION['completado'])){
                    echo "<div class='alerta alerta-exito'>".$_SESSION['completadp']."</div>";
                }
                ?>
                <form method="post" action="registro.php" class="form">

                    <label for="nombre">Nombre:</label>
                    <input type="text" name="nombre" placholder="Ingresa tu nombre"/>
                    
                    <?php  echo  isset($_SESSION['errores']) ? showErrors($_SESSION['errores'], 'nombre') : ' ' ?>


                    <label for="apellido">Apellidos:</label>
                    <input type="text" name="apellido" placholder="Ingresa tu apellido"/>
                    
                    <?php  echo  isset($_SESSION['errores']) ? showErrors($_SESSION['errores'], 'apellido') : ' ' ?>


                    <label for="email">Email:</label>
                    <input type="email" name="email" placholder="Ingresa tu email"/>
                    <?php  echo  isset($_SESSION['errores']) ? showErrors($_SESSION['errores'], 'email') : ' ' ?>

                    <label for="pass">Contraseña:</label>
                    <input type="password" name="password" placholder="Ingresa tu constrasela"/>
                    <?php  echo  isset($_SESSION['errores']) ? showErrors($_SESSION['errores'], 'password') : ' ' ?>

                    
                    <input type="submit" name="submit" value="Registar"/>
                </form>
            </div>
         </aside>