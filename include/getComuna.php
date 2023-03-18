<?php
    /*Acá estoy haciendo la conexion y tambien estoy seleccionando variables de la tabla comuna 
	para que se pueda visualizar desde afuera en el combobox de comuna.
	*/
	require('../cone.php');
	
	$id_region = $_POST['id_region'];
	
	$queryM = "SELECT id_comuna, comuna FROM comunas WHERE id_region = '$id_region' ORDER BY comuna";
	$resultadoM = $conexion->query($queryM);
	
	$html= "<option value=''></option>";
	
	while($rowM = $resultadoM->fetch_assoc())
	{
		$html.= "<option value='".$rowM['id_comuna']."'>".$rowM['comuna']."</option>";
	}
	
	echo $html;
?>