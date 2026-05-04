<?php
// configuración de conexión de REPARAIÓN DE CARROS
// en esta parte se definen los datos necesarios para conectarse a PostgreSQL

$host = "localhost"; 
// dirección del servidor donde está la base de datos (localhost = tu propia computadora)

$port = "5432"; 
// puerto que usa PostgreSQL para comunicarse (por defecto es 5432)

$db_name = "db_inventario_empresa"; 
// nombre exacto de la base de datos a la que queremos entrar

$user = "postgres"; 
// usuario con permisos para acceder a la base de datos

$password = "Roalex1122"; 
// contraseña del usuario anterior


// Cadena de conexión
// aquí se juntan todos los datos en un solo texto que PostgreSQL entiende
$cadenaConexion = "host=$host port=$port dbname=$db_name user=$user password=$password";


// Proceso de conexión activa
// @ evita que se muestren errores directamente en pantalla
$db_conn = @pg_connect($cadenaConexion);


// comprobar conexión si es o no exitosa 
$modo ="prod"; 
// define el modo del sistema:
// "dev" = desarrollo (muestra errores)
// "prod" = producción (oculta errores reales)

if(!$db_conn){
    // entra aquí si la conexión FALLA (no se pudo conectar)

    if($modo == "dev"){
        // si estamos en desarrollo, muestra el error real para poder corregirlo
        die("Fallo" . preg_last_error()); 

    }else{
        // si estamos en producción, no muestra detalles por seguridad
        die("Sistema en mantenimiento temporal");
    }

}else{
    // entra aquí si la conexión fue EXITOSA
    echo "Conexión exitosa a la BD";
}



// si no está definido, se bloquea el acceso
//define(!degined('ACCESO')) die('Acceso denegado');

?>