<?php
	$hote="localhost";   		
	$login="root";  		
	$pass="root"; 			
	$bd="bdd_pjs4"; 
	

		$link = mysqli_connect($hote, $login, $pass) 
			or die ("erreur de connexion :" . mysqli_error()); 

		mysqli_set_charset($link,"utf8");
		mysqli_select_db($link, $bd) 
			or die (htmlentities("erreur d'accès à la base :") . $bd);
?>