<?php
	/*Fonctions-modèle réalisant les requètes de gestion des utilisateurs en base de données*/
	
	// verif_bd : fonction booléenne. 
	// Si vraie, alors le profil de l'utilisateur est affecté en sortie à $profil
	function verif_bd($login,$mdp) { //CONNEXION DE MEMBRE
		
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
	
		$select_membre= "select * from professeur where login = '%s' and mdp = '%s'"; 
		$req_membre = sprintf($select_membre,$login,$mdp);
		
		
		$res_membre = mysqli_query($link, $req_membre)	
		or die (utf8_encode("erreur de requête : " . $req_membre));
		
		if ($res_membre) {
			$rowcount = mysqli_num_rows($res_membre); //0
			echo $rowcount;
			$profil = mysqli_fetch_assoc($res_membre);
			var_dump($profil); //null
			return -1;
		} 
		else {
			$profil = null;
			echo 'Echec de connexion';
			return 0;
		}
	}
	
	
	function getListeEtudiants(){
		
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
	
		$select_etu= "select * from etudiant order by nom"; 
		$req_etu = sprintf($select_etu);
		
		$res_etu = mysqli_query($link, $req_etu)	
		or die (utf8_encode("erreur de requête : " . $req_etu));
		
		if (mysqli_num_rows ($res_etu) == 0)
			return false; //"pas de contacts";
		
		else {
			$resListeEtu= array();
			while ($result = mysqli_fetch_assoc($res_etu) and isset($result)) {
				$resListeEtu[] = array('id'=>$result['id_etu'],'nom'=>$result['nom'],'prenom'=>$result['prenom']);
			}
			
			return $resListeEtu;
		}
		
	}

	
?>