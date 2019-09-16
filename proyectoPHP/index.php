<?php  require_once 'includes/header.php';  ?>


<!-- El sessionStart se hereda de la cabecera en este index -->

      
<?php   require_once 'includes/sidebar.php'; ?>

         <!-- CAJA PRICIPAL -->
        
         <div id="principal" >  
                <h1>Ultimas entradas</h1>

        <article class="entrada" >
                    <h2> titutlo de la entrada </h2>
                    <p> Descripcion de la entrada </p>
        </article>

        <article class="entrada" >
                    <a href="">
                        <h2> titutlo de la entrada </h2>
                        <p> Descripcion de la entrada </p>
                    </a>
                </article>



                <article class="entrada" >
                <a href="">
                        <h2> titutlo de la entrada </h2>
                        <p> Descripcion de la entrada </p>
                    </a>
                </article>



                <article class="entrada" >
                <a href="">
                        <h2> titutlo de la entrada </h2>
                        <p> Descripcion de la entrada </p>
                    </a>
                </article>

                <div id="ver-todas" > 
                 <a href=""> Ver todas las entradas  </a>
             </div>
             </div>

             

             <?php  require_once 'includes/footer.php';   ?>

    
    </body>
</html>