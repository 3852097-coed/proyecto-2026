<?php 
    require_once("includes/config.php"); 
    include 'includes/header.php';
?>


    <h1>gestión de usuarios</h1>
    <?php
        if($db_conn) {echo "Conexión exitosa a BD";}
    ?>

<!--Pie de pagina dinámico-->
<?php include 'includes/footer.php'; ?>