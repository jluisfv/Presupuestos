<?php
$serverName = 'sql5047.site4now.net'; //serverName\instanceName
$connectionInfo = array( "Database"=>"DB_A4EED7_presupuestos", "UID"=>"DB_A4EED7_presupuestos_admin", "PWD"=>"Joseluis96");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( $conn ) {
    // echo "Conexión establecida.<br />";
}else{
     echo "Conexión no se pudo establecer.<br />";
     die( print_r( sqlsrv_errors(), true));
}
?>