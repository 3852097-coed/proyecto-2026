<?php
//configuración de conección de IMAA Beauty
$host = "localhost";
$port = "5432";
$db_name = "db_inventario_empresa";
$user = "postgres";
$password = "Roalex1122"; 

//Cadena de conexión
$cadenaConexion = "host=$host port=$port dbname=$db_name user=$user password=$password";

//Proceso de conexión activa.
$db_conn = @pg_connect($cadenaConexion);

//comprobar conexión si es o no exitosa 
$modo = "dev";
     
if(!$db_conn){
    if($modo == "dev"){
         die("Fallo: " . preg_last_error());
        }else{
        die("Sistema en mantenimiento temporal");
        }
    }      
        else{echo "Conexión exitosa ala BD";}

?>