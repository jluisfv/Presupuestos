<?php

include 'conectar.php';






$fin = array_merge($_POST['costereal'],$_POST['detalle_real'],$_FILES['archivo']['name'],$_POST['id'], $_POST['iddta'] );


$cont = count($fin);
$distacia = $cont/5;


for ($i=0; $i < $distacia ; $i++) { 
	# code...
	
$rutaa = '/Presupuestos/img/'.$fin[(($i+$distacia)+$distacia)];
$idpresu = $fin[((($i+$distacia)+$distacia)+$distacia)];
$iddetalle = $fin[(((($i+$distacia)+$distacia)+$distacia)+$distacia)];
$detall = $fin[$i+$distacia];


$dirsubida = "C:/xampp/htdocs/Presupuestos/img/";

move_uploaded_file($fin[(($i+$distacia)+$distacia)], $imagenRuta);

	$sqlquery = "INSERT INTO ejecucion (id_detalle,costo_real,detalle,estado,archivo,id_presupuesto)
			VALUES ($iddetalle,$fin[$i],'$detall',1,'$rutaa',$idpresu)";

$result = sqlsrv_query($conn,$sqlquery);

}
if($result === false){
     die( print_r( sqlsrv_errors(), true));
}
else{

	if (headers_sent()) {
	    die(" Datos Registrados correctamente  Please click on this link: <a href=mainsuper.php?module=seguimiento>back </a>");
	}
	else{
	    exit(header("Location: mainsuper.php?module=seguimiento ?>"));
	}
}

/*
$idpresu = $_POST['id'];
$costoreal = $_POST['costereal'];

	$direcc		= $_POST['si'];
$iddetalle = $_POST['iddta'];
$detalle = $_POST['detalle_real'];

$imagenNombre = $_FILES['archivo'];
$nombre_img = $imagenNombre["name"];
$direci = $imagenNombre["tmp_name"];



$dirsubida = "C:/xampp/htdocs/Presupuestos/img/";
$imagenRuta = $dirsubida . basename($_FILES['archivo']['name']);
$rutaa = '/Presupuestos/img/'.$nombre_img;
move_uploaded_file($_FILES['archivo']['tmp_name'], $imagenRuta);

$sqlquery = "INSERT INTO [presupuesto].[dbo].ejecucion (id_detalle,costo_real,detalle,estado,archivo,id_presupuesto)
			VALUES ($iddetalle,$costoreal,'$detalle',1,'$rutaa',$idpresu)";

$result = sqlsrv_query($conn,$sqlquery);
if($result === false){
     die( print_r( sqlsrv_errors(), true));
}
else{

	if (headers_sent()) {
	    die(" Datos Registrados correctamente  Please click on this link: <a href=mainsuper.php?module=seguimiento>back </a>");
	}
	else{
	    exit(header("Location: mainsuper.php?module=seguimiento ?>"));
	}
}
*/
?>