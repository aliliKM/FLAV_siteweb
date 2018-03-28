<?php 

try{	
include_once('connect_SQL.php');
$req = $db->prepare("INSERT INTO Etudiant(login,mdp) VALUES(?,?)");
$req->execute(array($_GET['Login'],$_GET['MDP']));
}catch(Exception $e){
		$e->getMessage();
}


?>