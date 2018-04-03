<?php
	/*Fonctions-modèle réalisant les requètes de gestion des utilisateurs en base de données*/
	
	// verif_bd : fonction booléenne. 
	// Si vraie, alors le profil de l'utilisateur est affecté en sortie à $profil
	function verif_bd($login,$mdp) { //CONNEXION DE MEMBRE
		
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
	
		$select_membre= "select * from professeur where loginProfesseur = '%s' and mdpProfesseur = '%s'"; 
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
	
		$select_etu= "select * from etudiant order by nomEtudiant"; 
		$req_etu = sprintf($select_etu);
		
		$res_etu = mysqli_query($link, $req_etu)	
		or die (utf8_encode("erreur de requête : " . $req_etu));
		
		if (mysqli_num_rows ($res_etu) == 0)
			return false; //"pas de contacts";
		
		else {
			$resListeEtu= array();
			while ($result = mysqli_fetch_assoc($res_etu) and isset($result)) {
				$resListeEtu[] = array('id_etu'=>$result['idEtudiant'],'login_etu'=>$result['loginEtudiant'],'mdp_etu'=>$result['mdpEtudiant'],'nom_etu'=>$result['nomEtudiant'],'prenom_etu'=>$result['prenomEtudiant']);
			}	
			return $resListeEtu;
		}
	}
	
	function creerEtu($nom_etu,$prenom_etu,$login_etu,$mdp_etu){
		
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
		
		$insert_etu= "insert into etudiant(nomEtudiant,prenomEtudiant, loginEtudiant, mdpEtudiant) values ('%s','%s','%s','%s')"; 
		$req_etu = sprintf($insert_etu, $nom_etu, $prenom_etu,$login_etu,$mdp_etu);
		
		$res_etu = mysqli_query($link, $req_etu)	
			or die (utf8_encode("erreur de requête : " . $req_etu));
		
	}
	
	function suppEtu($nom_etu,$prenom_etu){

		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
		
		$insert_etu= "delete from etudiant where nomEtudiant='%s' and prenomEtudiant='%s'"; 
		$req_etu = sprintf($insert_etu, $nom_etu, $prenom_etu);
		
		$res_etu = mysqli_query($link, $req_etu)	
			or die (utf8_encode("erreur de requête : " . $req_etu));
	}
		
	
	function getListeCompetences(){
	
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
		
		$select_competences = "select * from competence";
		$req_competence = sprintf($select_competences);
		
		$res_competence = mysqli_query($link, $req_competence)
			or die (utf8_encode("erreur de requête : " . $req_competence));
		
		$resListeCompetence= array();
			while ($result = mysqli_fetch_assoc($res_competence) and isset($result)) {
				$resListeCompetence[] = array('id_competence'=>$result['idCompetence'],'intituleCompetence'=>$result['intituleCompetence']);
			}
		return $resListeCompetence;
	}
	
	function getScore($idEtu, $idMiniJeu){
		require ("./Modele/connectBD.php") ; //connexion $link à MYSQL et sélection de la base
	
		$select_score= "select Score from jouer where id_etu = '%s' and id_miniJeu = '%s'"; 
		$req_score = sprintf($select_score, $idEtu, $idMiniJeu);
		
		$res_score = mysqli_query($link, $req_score)	
		or die (utf8_encode("erreur de requête : " . $req_score));
		
		if (mysqli_num_rows ($res_score) != 0)
			return $res_score;
		
		else {
		
			return 0;
		}
	
	}
?>