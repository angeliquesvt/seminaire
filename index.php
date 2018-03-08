<?php
if (session_status() == PHP_SESSION_NONE) {
   session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Mews</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo"><img src="img/logo/logo.png" width="190px" height="auto" /></a>
      <ul class="right hide-on-med-and-down">
        <?php if(isset($_SESSION['email'])): ?>
        <li><a class="deco" href="./traitements/logout.php">Déconnexion</a></li>
              </ul>
        <ul id="nav-mobile" class="side-nav">
        		<li><a href="./traitement/logout.php">Déconnexion</a></li>
        </ul>
				<?php else: ?>
   <li><a class="modal-trigger" href="#modalInscription">Inscription</a></li>
        <li><a class="modal-trigger" href="#modalConnexion">Connexion</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
		<li><a href="#modalInscription">Inscription</a></li>
        <li><a href="#modalConnexion">Connexion</a></li>
      </ul>

      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
      <?php endif; ?>
  </nav>
	  <!--   Présention   -->

        <?php if(isset($_SESSION['flash'])):?>
          <?php foreach($_SESSION['flash'] as $type => $message): ?>
            <div class="container">
              <div class="row">
                <div class="alert alert-<?= $type; ?>">
                  <?= $message; ?>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        <?php endif; ?>
	   <div class="container">
		   <div class="row">
			   <div class="col s12">
					<h4 class="left">Présentation</h1>
				</div>
			</div>
			<div class="row">
			   <div class="col s12">
					<p>Mews est un site vous permettant d'avoir dans votre fils d'actualité les dernières couvertures de magazines et les dernières actualités.
					<br/>Différentes fonctionnalités sont à votre disposition pour rendre votre navigation la plus agréable possible.</p>
				</div>
			</div>
       </div>

      <!--   Icon Section   -->
      <div class="container" >
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">autorenew</i></h2>
            <h5 class="center">Des nouvelles en temps réel</h5>
            <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">favorite</i></h2>
            <h5 class="center">Personnalisation du fil d'actualités</h5>

            <p class="light">Dans </p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">fiber_new</i></h2>
            <h5 class="center">Les articles les plus populaires</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>
      </div>

    </div>
  </div>

<!--  VIDEO -->
	<div class="container">
		<div class="row">
			<div class="video-container">
				<iframe width="853" height="480" src="www.youtube.com/embed/Q8TXgCzxEnw?rel=0" frameborder="0" allowfullscreen></iframe>
			</div>
		</div>
		<div class="row">
			<p>Explication de la video</p>
		</div>
	</div>

<!-- REVUE DE PRESSE -->
	   <div class="container">
		   <div class="row">
			   <div class="col s12">
					<h4 class="left">Revue de presse</h1>
				</div>
			</div>
       </div>

<!--  FOOTER -->
</div>
  <footer class="page-footer blue darken-2">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>
        </div>

        <div class="col l3 s12 right">
          <h5 class="white-text">Liens</h5>
          <ul>
            <li><a class="white-text" href="pages/apropos.html">A propos</a></li>
            <li><a class="white-text" href="pages/FAQ.html">FAQ</a></li>
            <li><a class="white-text" href="pages/mentionslegales.html">Mentions légales</a></li>
            <li><a class="white-text" href="pages/conditions.html">Conditions générales d'Utilisation</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">

      </div>
    </div>
  </footer>



 <!-- MODAL INSCRIPTION-->
  <div id="modalInscription" class="modal">
    <div class="modal-content">
      <h4>Inscription</h4>
      <div class="row">
       <form class="col s12" action="./traitements/traitementRegister.php" method="POST">
		 <div class="row">
			<div class="input-field col s6">
               <label for="">PRÉNOM</label>
               <input type="text" name="firstname"/>
               </div>
			<div class="input-field col s6">
                 <label for="">NOM</label>
                 <input type="text" name="lastname"/>
             </div>
          </div>
          <div class="row">
			<div class="input-field col s6">
				<label for="">DATE DE NAISSANCE</label>
					<input type="text" class="datepicker" name="anniversary">
				</div>
			</div>
             <div class="row">
                 <label for="">SEXE</label>
					<p>
					  <input name="sexe" type="radio" id="test1" />
					  <label for="test1">Femme</label>
					</p>
					<p>
					  <input name="sexe" type="radio" id="test2" />
					  <label for="test2">Homme</label>
					</p>
             </div>
             <div class="row">
				<div class="input-field col s6">
                  <label for="">ADRESSE MAIL</label>
					<input type="text" name="email"/>
                </div>
                <div class="input-field col s6">
                  <label for="">Confirmer adresse mail</label>
                  <input type="text" name="email_confirm"/>
				</div>
                </div>
                <div class="row">
					<div class="input-field col s6">
						<label for="">MOT DE PASSE</label>
						<input type="password" name="password"/>
					</div>
					<div class="input-field col s6">
						<label for="">Confirmer mot de passe</label>
						<input type="password" name="password_confirm" />
					</div>
					</div>
              </div>
          </div>
         <div class="modal-footer">
            <button type="submit" class="btn waves-effect waves-light" name="submit">Je m'inscris</button>
               </div>
            </form>



  </div>

  <?php

//gère la requête GET lorsque l'utilisateur entre un mauvais pseudo/mail

if(@$_GET['action'] == 'wrongMDP' ) {
  echo "<h2 style=\"color:#3080D0; text-align:center;\"> Les mots de passe ne correspondent pas </h2>";
 }

 if(@$_GET['action'] == 'register' ) {
  echo "<h2 style=\"color:#3080D0; text-align:center;\"> Compte enregistré </h2>";
 }

?>

  <!-- MODAL CONNEXION-->
  <div id="modalConnexion" class="modal">
    <div class="modal-content">
      <h4>Connexion</h4>
      <div class="row">
       <form class="col s12" action="./traitements/traitementLogin.php" method="POST">
		 <div class="row">
			<div class="input-field col s12">
                <label for="">Email</label>
				<input type="text" name="email" />
               </div>
          </div>
          <div class="row">
			<div class="input-field col s12">
                  <label for="">Mot de passe <a href="remember.php">(Mot de passe oublié)</a></label>
				<input type="password" name="password" />
				</div>
              </div>
          </div>
         <div class="modal-footer">
            <button type="submit" class="btn waves-effect waves-light" name="connexion">Je me connecte</button>
            </div>
         </form>
         </div>


         <?php
         if(@$_GET['action'] == 'connected' ) {
          //here we'll be put things when user is connected (newsfeed)

          echo "<h3>Connecté</h3>";
          header("Location: ../index.php?action=yay");
         }

          if(@$_GET['action'] == 'user' ) {
            echo "<h2 style=\"color:#3080D0; text-align:center;\"> Utilisateur non inscrit </h2>";
           }

           if(@$_GET['action'] == 'empty' ) {
            echo "<h2 style=\"color:#3080D0; text-align:center;\"> Champs vides </h2>";
           }?>


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
	<script>
	  $(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
  });
	</script>
	<script>
	  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 100, // Creates a dropdown of 15 years to control year,
    today: 'Today',
    clear: 'Clear',
    close: 'Ok',
    closeOnSelect: false // Close upon selecting a date,
  });
	</script>
  </body>
</html>
