<?php
     //aqui nos muestra como tenemos guardado la pagina web.
     require_once("includes/config.php");
     //aqui nos muetra el nombre principal.
     echo "<h1>Monitor de base de datos</h1>";
     echo "<hr>";
     if($db_conn){
        echo "<p style='color:green'> . SISTEMA ONLINE</p>";
        $sql = "SELECT version();";
      //aqui nos muestra la variable del resultado.  
        $resultado = pg_query($db_conn, $sql);
        if($resultado){
            $info = pg_fetch_result($resultado,0,0);
            echo  "<strong>motor: </strong>" . $info;
        }
     }else{
        echo "<p style='color:red'> SISTEMA OFFLINE</p>";
        echo "<button onclick='location.reload()'> Esanear de nuevo</button>";
     }
?>