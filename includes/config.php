<?php
//configuración de conección de IMAA Beauty
$host = "localhost";
$port = "5432";
$db_name = "db_inventario_empresa";
$user = "postgres";
$password = "Roalex1122"; 


//Cadena de conexión
$cadenaConexion = "host=$host port=$port dbname=$db_name user=$user password=$password";
//Establecer una conexión 
$db_conn = pg_connect($cadenaConexion);

//comprobar conexión si es o no exitosa 
if(!$db_conn){
    die("Error de conexión con la Base de Datos". pg_last_error()); 
}
echo "Conexión exitosa a reparación de carros";
?>