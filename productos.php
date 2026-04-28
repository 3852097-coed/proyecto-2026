<?php
    //modulo de conexión 
    require_once("includes/config.php"); 
    include 'includes/header.php';
?>


    <h1>gestión de productos</h1>
<?php
    //comprobamos si nos conectamos a la base de datos
        if($db_conn) {echo "Conexión exitosa a BD";}
?>

<!--Pie de pagina dinámico-->
<?php include 'includes/footer.php'; ?>