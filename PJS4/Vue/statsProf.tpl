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
	<script>
		
	var pct = 0,
	span_progress = document.getElementById("span_progress"),
	div_loading_progress = document.getElementById("div_loading_progress");


	function display_pct(p) {
	  span_progress.innerHTML=""+p+"%";
	  div_loading_progress.className="c100 p"+p;
	}

	function update_pct(){
	  display_pct(pct++);
			
	  if (pct<=100) {
				setTimeout(update_pct,50);
	  }
	}

	setTimeout(update_pct,100);

	
	</script>
	
	<style>
				.progress{
				width: 100px;
				height: 100px;
				line-height: 100px;
				background: none;
				margin: 0 auto;
				box-shadow: none;
				position: relative;
			}
			.progress:after{
				content: "";
				width: 100%;
				height: 100%;
				border-radius: 50%;
				border: 12px solid #fff;
				position: absolute;
				top: 0;
				left: 0;
			}
			.progress > span{
				width: 50%;
				height: 100%;
				overflow: hidden;
				position: absolute;
				top: 0;
				z-index: 1;
			}
			.progress .progress-left{
				left: 0;
			}
			.progress .progress-bar{
				width: 100%;
				height: 100%;
				background: none;
				border-width: 2px;
				border-style: solid;
				position: absolute;
				top: 0;
			}
			.progress .progress-left .progress-bar{
				left: 100%;
				border-top-right-radius: 80px;
				border-bottom-right-radius: 80px;
				border-left: 0;
				-webkit-transform-origin: center left;
				transform-origin: center left;
			}
			.progress .progress-right{
				right: 0;
			}
			.progress .progress-right .progress-bar{
				left: -100%;
				border-top-left-radius: 80px;
				border-bottom-left-radius: 80px;
				border-right: 0;
				-webkit-transform-origin: center right;
				transform-origin: center right;
				animation: loading-1 1.8s linear forwards;
			}
			.progress .progress-value{
				width: 90%;
				height: 90%;
				border-radius: 30%;
				background: #ffffff;					//background-color
				font-size: 24px;
				color: #c790e9;							//color
				line-height: 135px;
				text-align: center;
				position: absolute;
				top: 5%;
				left: 5%;
			}
			.progress.blue .progress-bar{
				border-color: #c790e9;					//progressbar color
			}
			.progress.blue .progress-left .progress-bar{
				animation: loading-2 1s linear forwards 1.8s;
			}
			.progress.yellow .progress-bar{
				border-color: #fdba04;
			}
			.progress.yellow .progress-left .progress-bar{
				animation: loading-3 1s linear forwards 1.8s;
			}
			.progress.pink .progress-bar{
				border-color: #ed687c;
			}
			.progress.pink .progress-left .progress-bar{
				animation: loading-4 0.4s linear forwards 1.8s;
			}
			.progress.green .progress-bar{
				border-color: #1abc9c;
			}
			.progress.green .progress-left .progress-bar{
				animation: loading-5 1.2s linear forwards 1.8s;
			}
			@keyframes loading-1{
				0%{
					-webkit-transform: rotate(0deg);
					transform: rotate(0deg);
				}
				100%{
					-webkit-transform: rotate(180deg);
					transform: rotate(180deg);
				}
			}
			@keyframes loading-2{
				0%{
					-webkit-transform: rotate(0deg);
					transform: rotate(0deg);
				}
				100%{
					-webkit-transform: rotate(144deg);
					transform: rotate(144deg);
				}
			}
			@keyframes loading-3{
				0%{
					-webkit-transform: rotate(0deg);
					transform: rotate(0deg);
				}
				100%{
					-webkit-transform: rotate(90deg);
					transform: rotate(90deg);
				}
			}
			@keyframes loading-4{
				0%{
					-webkit-transform: rotate(0deg);
					transform: rotate(0deg);
				}
				100%{
					-webkit-transform: rotate(36deg);
					transform: rotate(36deg);
				}
			}
			@keyframes loading-5{
				0%{
					-webkit-transform: rotate(0deg);
					transform: rotate(0deg);
				}
				100%{
					-webkit-transform: rotate(126deg);
					transform: rotate(126deg);
				}
			}
			@media only screen and (max-width: 990px){
				.progress{ margin-bottom: 20px; }
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
					<?php /*
					require("./Modele/utilisateurBD.php");
					$listeCompetences=getListeCompetences();
					$_SESSION['comp']=$listeCompetences;
					
					foreach($_SESSION['comp'] as $competence){
						echo("<th scope='col'>".$competence['intituleCompetence']."</th>");
					}*/
				?>	
				
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
	
					}
				?>	
				
				<td>
				
				  <div class="col-md-3 col-sm-6">
						<div class="progress blue">
							<span class="progress-left">
								<span class="progress-bar"></span>
							</span>
							<span class="progress-right">
								<span class="progress-bar"></span>
							</span>
							<div class="progress-value">70%</div>
						</div>
					</div>
		
					
				</td>
				</tr>
				</tbody>
				</table>
			
			</div>
		</div>
		</div>
		
	</body>
	
	
	</html>