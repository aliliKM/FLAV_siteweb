<html>
	<head>
  		<link rel="stylesheet" href="Vue/styleCSS/styleAccueilPerso.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta charset="utf-8">
	</head>
	
	<style>
		h1 { color : #FFFFFF; }
		button {background-color : #FFFFFF; color : #000000;}
		form { color: #000000;}
		h4{color: #000000;}
		form button {background-color : #000000; color : #FFFFFF;}
	</style>
	
	<body>
		<div class=row>
			<div class="col-sm-4 " id="bg"></div>
			<div class="col-sm-4 contenu">
				<div class="flav">
					<h1 class=titre><img src="Vue/img/logo.png" /></h1>
				</div>
			</div>
			</div>
<!-- 		FORM CONNEXION			 -->
					<!-- Modal content-->
					<div class="modal-content" id=connect>
					    <div class="modal-header">
						    <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Connexion</h4>
					    </div>
						
					    <div class="modal-body">
							<form class="form-horizontal" id="idformConnexion" action="index.php?controle=utilisateur&action=ident" method="post">
								<div class="form-group">
									<label class="control-label col-sm-3" for="login">Identifiant:</label>
									<div class="col-sm-9">
										<input class="form-control" id="nomConnexion" placeholder="Entrez votre identifiant" name="login" autofocus required>
									</div>
								</div>	
								<div class="form-group">
									<label class="control-label col-sm-3" for="mdp">Mot de passe:</label>
									<div class="col-sm-9">          
										<input type="password" class="form-control" id="numConnexion" placeholder="Entrez votre mot de passe" name="mdp" required>
									</div>
								</div>
								<div class="form-group">        
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn" >Valider</button>
									</div>
								</div>
							</form>

							</div>
					</div>
	</body>
</html>