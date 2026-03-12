<?php
if (extension_loaded('pgsql')) {
    echo "✅ ¡OPERATIVO! El stack PHP-Postgres funciona.";
} else {
    echo "❌ ERROR: Revisa la activación en php.ini";
}
?>