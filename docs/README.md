# Sistema de inventario  -Reparación de Carros 

## Requisitos Técnicos.

- PHP 8.0.30

- Postgres 18

- Apache 2.4

## Guía de instalacion. 

- *Paso 1. Base de datos*

- *En el server dar clic.* 

- *Elegir create.*

- *Database y le escribimos la base de daos (db_inventario_empresa).*

- *Dar clic en Save.*

- *damos clic derecho en la base de datos.* 

- *Damos clic en Restore.*

- *En Format en la opción damos clic en Plain.*

- *En Filename buscamos la carpeta (db_inventario_empresa).*

- *Damos clic en el boton Restore.*

###  Paso 2. Ubicación de config.php. 

*Esta ubicado dentro de la carpeta includes.*

### Variables a la conexión de base de Datos.

- *$host: Guarda dónde está el servidor (localhost).*

- *$port: Guarda el número de conexión (5432).*

- *$db_name: Guarda el nombre de la base de datos (db_inventario_empresa).*

- *$user: Guarda el usuario (postgres).*

- *$password: Guarda la contraseña (El administrador se lo proveerá).*

Nota: Nunca suba contraseñas reales al repositorio .

## Sección de estructura.

- *Include: Sive para agregar partes simples de la página (como menú o pie) porque si falta, la página puede seguir funcionando sin problema.*

- *require: Sirve para: agregar archivos importantes (configuración, funciones).*

- *include_once: Sirve para agregar un archivo solo una vez lo utilizamos para evitar repetir código por error, pero sin detener la página si falla.*

- *htaccess: Sirve para dar reglas al servidor sobre cómo debe funcionar la página web para controlar el acceso, mejorar las URLs y manejar errores sin cambiar todo el código.*

## Registros de cambios.
- *Actualmente en V1.0.*

- *Enlace de GitHub (https://github.com/alexander-coedsantiago/proyecto-2026.git) .*

- *Documentacion de config.php.*

<?php
// configuración de conexión de Reparación de carros 
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
define(!degined('ACCESO')) die('Acceso denegado');

?># Rony Alexander Orellana Medina

## 3 año de Bachillerato técnico

Bloque integrado

**Modulo 3.1**

*Modulo 3.1*

**Listas**

- Elemento 1

- Elemento 2

*  [Ir a Google](https://WWW.google.com)

**Imagenes**

![Kuromi](assets/img/kuromi.jpg)

#Ahora hableos de nuestro proyecto

# Sistema de Bloc de notas

<<<<<<< HEAD
##


fxcxccxxc,,,,
=======
##
>>>>>>> 954a428f5be2ad8492eb9e9691aca37e1bb69ac3
