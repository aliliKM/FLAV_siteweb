<?php
	$hote="localhost";   		
	$login="koudosso";  		
	$pass="koudosso"; 			
	$bd="pweb17_koudosso"; 
	

		$link = mysqli_connect($hote, $login, $pass) 
			or die ("erreur de connexion :" . mysqli_error()); 

		mysqli_set_charset($link,"utf8");
		mysqli_select_db($link, $bd) 
			or die (htmlentities("erreur d'accès à la base :") . $bd);
?>