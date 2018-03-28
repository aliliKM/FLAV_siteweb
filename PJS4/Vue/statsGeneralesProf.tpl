	<!doctype html>
	<html lang="fr">
	<head>
		<meta charset="utf-8">
		<title>Statistiques générales</title>
		<link rel="stylesheet" href="style.css">
		<link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600,800,900" rel="stylesheet" type="text/css">
		
		<style>

			#container {
			  margin: 20px;
			  width: 200px;
			  height: 200px;
			  position: relative;
			  visibility: visible;
			}		
		
		</style>
		
		<script>
		// progressbar.js@1.0.0 version is used
		// Docs: http://progressbarjs.readthedocs.org/en/1.0.0/

		var bar = new ProgressBar.Circle(container, {
		  color: '#aaa',
		  // This has to be the same size as the maximum width to
		  // prevent clipping
		  strokeWidth: 4,
		  trailWidth: 1,
		  easing: 'easeInOut',
		  duration: 1400,
		  text: {
			autoStyleContainer: false
		  },
		  from: { color: '#aaa', width: 1 },
		  to: { color: '#333', width: 4 },
		  // Set default step function for all animate calls
		  step: function(state, circle) {
			circle.path.setAttribute('stroke', state.color);
			circle.path.setAttribute('stroke-width', state.width);

			var value = Math.round(circle.value() * 100);
			if (value === 0) {
			  circle.setText('');
			} else {
			  circle.setText(value);
			}

		  }
		});
		bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
		bar.text.style.fontSize = '2rem';

		bar.animate(1.0);  // Number from 0.0 to 1.0	
		
		
		</script>
	
	</head>
	
	<body>
	<div class="page" style="margin-top: 20px">
	<table class="table">
	<thead>
	<tr>
		<th scope="col"></th>
		<th scope="col">Nom</th>
		<th scope="col">Prénom</th>
		<th scope="col">Orthographe</th>

	</tr>
	<tbody>
	
<?php 
	require("./Modele/utilisateurBD.php");
	$tab_etu=getListeEtudiants();
	$_SESSION['tabetu']=$tab_etu;
	
	foreach($_SESSION['tabetu'] as $etudiant){
		echo("<tr><th scope=row'></th>");
		echo("<td>".$etudiant['nom']."</td>");
		echo("<td>".$etudiant['prenom']."</td>");
		echo("<td> <div id='container'></div> </td>");
		
		echo("</tr>");
	}
?>	
	
	</tbody>
	</table>
	</div></body>
	
	
	</html>