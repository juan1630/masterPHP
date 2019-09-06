<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="utf-8"/>
        <title> Blog  </title>
        <link rel="stylesheet" type="text/css" href="./assets/css/estilos.css" />
    </head>
    <body>
        <!-- Cabecera -->
    <header id="header">
         <div id="logo">
            <a href="index.php"> Blog </a>
         </div>

         <!-- MENU -->
        <nav id="nav">
            <ul>
                <li> <a href="index.php"> Inicio </a></li>
                <li> <a href="index.php"> Categoria 1 </a></li>
                <li> <a href="index.php"> Categoria 2 </a></li>
                <li> <a href="index.php"> Categoria 3 </a></li>
                <li> <a href="index.php"> Categoria 4 </a></li>
                <li> <a href="index.php"> Contacto </a></li>
            </ul>
        </nav>

    </header>

        <div id="contenedor">

                <!--  SIDEBAR  -->

        <aside id="sidebar" >
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
                <form method="post" action="registro.php">

                    <label for="email">Email:</label>
                    <input type="email" name="email" placholder="Ingresa tu email"/>

                    <label for="pass">Contraseña:</label>
                    <input type="password" name="password" placholder="Ingresa tu constrasela"/>


                    <label for="nombre">Nombre:</label>
                    <input type="text" name="nombre" placholder="Ingresa tu nombre"/>


                    <label for="apellido">Apellidos:</label>
                    <input type="text" name="apellido" placholder="Ingresa tu apellido"/>


                    
                    <input type="submit" value="Registar"/>
                </form>
            </div>
         </aside>

                    <!-- CAJA PRICIPAL -->
             <div id="principal" >  
                <h1>Ultimas entradas</h1>

                <article class="entrada" >
                    <h2> titutlo de la entrada </h2>
                    <p> Descripcion de la entrada </p>
                </article>


                <article class="entrada" >
                    <h2> titutlo de la entrada </h2>
                    <p> Descripcion de la entrada </p>
                </article>



                <article class="entrada" >
                    <h2> titutlo de la entrada </h2>
                    <p> Descripcion de la entrada </p>
                </article>



                <article class="entrada" >
                    <h2> titutlo de la entrada </h2>
                    <p> Descripcion de la entrada </p>
                </article>

             
             </div>

        </div>



        <!-- PIE DE PÁGINA -->

        <footer id="pie">
                <p> Desarrollado por José Patrón &copy; 2019 </p>
        </footer>
    
    </body>
</html>