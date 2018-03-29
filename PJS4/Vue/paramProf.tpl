<!doctype html>
<html lang="fr">
	<head>
		<title>Paramétrages</title>
		<link rel="stylesheet" href="Vue/styleCSS/styleAccueilPerso.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta charset="utf-8">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">

		
		
	<script>
		  $( function() {
			$( "#accordion" ).accordion({
			  collapsible: true
			});
		  } );
	</script>

	</head>
	
	<body>
		<div class="page container"  id="accordion">
		
		<!-- CREER ETUDIANT -->
		
			
				<h3>Créer un étudiant</h3><div class="article"><div>
				<h5 class="titre_div">Créer un étudiant</h5>
				<form class="form-horizontal" id="idformConnexion" action="index.php?controle=utilisateur&action=creerEtu_" method="post">
							<div class="form-group">
								<label class="control-label col-sm-3" for="nom">Nom :</label>
								<div class="col-sm-9">
									<input class="form-control" id="nom" placeholder="Entrez le nom de l'étudiant" name="nom" autofocus required>
								</div>
							</div>	
							
							<div class="form-group">
								<label class="control-label col-sm-3" for="prenom">Prénom :</label>
								<div class="col-sm-9">          
									<input type="text" class="form-control" id="prenom" placeholder="Entrez le prénom de l'étudiant" name="prenom" required>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-sm-3" for="login">Login :</label>
								<div class="col-sm-9">          
									<input type="text" class="form-control" id="login" placeholder="Entrez le login de l'étudiant" name="login" required>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-sm-3" for="mdp">Mot de passe :</label>
								<div class="col-sm-9">          
									<input type="text" class="form-control" id="mdp" placeholder="Entrez le mot de passe de l'étudiant" name="mdp" required>
								</div>
							</div>
							
							<div class="form-group">        
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn" >Créer</button>
								</div>
							</div>
				</form>
		
				</div>
			</div>
		
		
		<!-- SUPPRIMER ETUDIANT -->
		
		
			
				<h3>Supprimer un étudiant</h3><div class="article"><div>
			<h5 class="titre_div">Supprimer un étudiant</h5>
			<form class="form-horizontal" id="idformConnexion" action="index.php?controle=utilisateur&action=suppEtu_" method="post">
				
				<div class="form-group"> 
					<div class="ui-widget">
						<label class="control-label col-sm-3" for="nom">Nom : </label>
						<div class="col-sm-9"> 
							<input id="nom" class="form-control" placeholder="Entrez le nom de l'étudiant" name="nom" autofocus required>
						</div>
					</div>
				</div>
				
				<div class="form-group"> 
					<div class="ui-widget">
						<label class="control-label col-sm-3" for="prenom">Prénom : </label>
						<div class="col-sm-9"> 
							<input id="prenom" class="form-control" placeholder="Entrez le prénom de l'étudiant" name="prenom" autofocus required>
						</div>
					</div>
				</div>	
	 
				<div class="form-group">        
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn" >Supprimer</button>
					</div>
				</div>
				
			</form>
				</div>
			</div>
			
			
			
		</div>

	
	</body>
	
	
</html>