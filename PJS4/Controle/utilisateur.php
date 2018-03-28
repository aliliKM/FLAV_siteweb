<?php 

	function ident () {
		$login=isset($_POST['login'])?trim($_POST['login']):'';
		$mdp=isset($_POST['mdp'])?trim($_POST['mdp']):'';
		$msg="Utilisateur inexistant";
		
		require ("./modele/utilisateurBD.php");
		
			if (verifS_ident($login, $mdp) && (verif_bd($login, $mdp) == -1)) {
				$profil = "test";
				$_SESSION['profil'] = $profil;
				$nexturl = "index.php?controle=utilisateur&action=connexion";
				header ("Location: " . $nexturl);
				return;
			}
			else {
				require("vue/accueil.tpl");
			}
	}

	
	//CHARGEMENT PAGES
	
	function connexion() { 
		require ("Vue/header.tpl") ;
		require ("Vue/pageProf.tpl");
	}

	function statsEtu() {
		require ("Vue/header.tpl");
		require ("Vue/statsGeneralesProf.tpl");
	}
	
	
	function statsIndiv() {
		require ("Vue/header.tpl");
		require ("Vue/statsIndivProf.tpl");
	}
	
	
	function param() {
		require ("Vue/header.tpl");
		require ("Vue/paramProf.tpl");
	}
	
	function accueilProf() {
		require ("Vue/header.tpl");
		require ("Vue/pageProf.tpl");
	}
	
	// vérification syntaxique des saisies
	// nom : composé de caractères alphanumériques et du tiret, chaîne non vide de 30 caractères maximum
	// num : composé de caractères alphanumériques, à raison de 6 à 8 caractères
	// En cas d'erreur, une information sur l'erreur est retournée dans $err 
	function verifS_ident($login, $mdp, $err = null) {
		if (!preg_match("`^[[:alpha:][:digit:]\-]{1,255}$`", $login)) {
			$err = 'erreur de syntaxe sur le login';
			return false;
		}
		if (!preg_match("`^[[:alpha:][:digit:]\-]{1,255}$`", $mdp)) {
			$err = 'erreur de syntaxe sur le mdp.';
			return false;
		}
		return true;
	} 
	