	<!doctype html>
	<html lang="fr">
	<head>
		<meta charset="utf-8">
		<title>Statistiques générales</title>
		<link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600,800,900" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="Vue/styleCSS/styleAccueilPerso.css">
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		
	<script>
	  $( function() {
		$( ".progressbar" ).progressbar({
			value:80
		});
	  } );
	</script>
	
	<style>
	.ui-progressbar-value {
		background: #c790e9;
	}
	</style>

	</head>
	
	<body>
		<div class="page">
			<div class="container article">

				<table class="table">
				<thead>
				<tr>
					<th scope="col"></th>
					<th scope="col">Nom</th>
					<th scope="col">Prénom</th>
					<?php 
						require("./Modele/utilisateurBD.php");
						$listeCompetences=getListeCompetences();
						$_SESSION['comp']=$listeCompetences;
						foreach($_SESSION['comp'] as $competence){
							echo("<th scope='col'>".$competence['intituleCompetence']."</th>");
						}
					?>
				</tr>
				<tbody>
				<?php 
					$tab_etu=getListeEtudiants();
					$_SESSION['tabetu']=$tab_etu;
					
					foreach($_SESSION['tabetu'] as $etudiant){
						echo("<tr><th scope=row'></th>");
						echo("<td>".$etudiant['nom_etu']."</td>");
						echo("<td>".$etudiant['prenom_etu']."</td>");
					}
				?>	
				<td><div class="progressbar"></div></td>
				<td><div class="progressbar"></div></td>
				</tr>
				</tbody>
				</table>
			
			</div>
		</div>
		</div>
		
	</body>
	
	
	</html>