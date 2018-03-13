<?php

require_once $_SERVER['DOCUMENT_ROOT']. '/seminaire/controller/controllerFlux.php';


if (!isset($_SESSION['email'])) {

         echo "<script type=\"text/javascript\">
         alert(\"Utilisateur non connecté\");
         location=\"./index.php\";
         </script>";
 }

 if (session_status() == PHP_SESSION_NONE) {
  session_start();
}

$flux_list = (new ControllerFlux())->getAllActifFlux();

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Mews</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.8/semantic.min.css">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
  <script src="./js/affichageArticles.js"></script>
</head>
<body>
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="./index.php" class="brand-logo"><img src="img/logo/logo.png" width="190px" height="auto" /></a>
      <ul class="right hide-on-med-and-down">
      <li><a class="page" href="./index.php"><i class="material-icons" style="color:black;">home</i></a></li>
        <li><a class="deco" href="./model/logout.php">Déconnexion</a></li>
        <li><a class="page" href="./favori.php">Mes favoris</a></li>

              </ul>
        <ul id="nav-mobile" class="side-nav">
            <li><a class="page" href="./favori.php">Accueil</a></li>
            <li><a class="deco" href="./model/logout.php">Déconnexion</a></li>
        		<li><a href="./model/logout.php">Déconnexion</a></li>
        </ul>

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
			   <div class="col s12 m9">
					<h4 class="left">Fil d'actualité de  <?php print_r($_SESSION['email']); ?></h1>
        </div>
        

      </div>
          

      <a class="waves-effect waves-light btn teal lighten-2 modal-trigger" href="#modal1"><img src="./img/engrenage.png" id="engrenage"/></a>

      <!-- Modal Structure -->
      <div id="modal1" class="modal">
        <div class="modal-content">
          <h4>Paramètres</h4>
          <div class="listeFlux">
          <div class="head"><h2 class="flux">Liste de flux <span id="compteur_flux"><span id="compteur_flux"><?php echo count($flux_list)?></span> / <span id="limite_flux">6</span></span></h2></div>
            <ul>
              <li>gnheal
              <input type="checkbox">
              <div class="Switch Round">
                <div class="Toggle"></div>
              </div>
              </li> 
            </ul>
          </div>
        </div>
        <div class="modal-footer">
          <a href="#!" class="modal-action modal-close waves-effect waves-blue btn-flat">Merci</a>
        </div>
      </div>  
      
            <!-- Modal Structure -->
            <div id="modal2" class="modal">
        <div class="modal-content">
          <h4>Mots clef</h4>
          <form>
          <label for="keywords">Mots clef (séparés par des virgules)</label>
          <input type="text" name="keywords" id="keywords"/>            
          </form>
        </div>
        <div class="modal-footer">
          <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat" id="validateFavori">Valider</a>
        </div>
      </div>

      <div class="row">
        <div class="col s12 m7">
      <div class="flux_list">
      <?php
      $flux_list = (new ControllerFlux())->getAllActifFlux();
          foreach($flux_list as $flux)
          {
              include($_SERVER['DOCUMENT_ROOT']. '/seminaire/defaultFluxView.php');
          }

      ?>
      </div>
      </div>
      </div>

      <div class="col hide-on-small-only m3 l2" style="float:right;">
          <div class="toc-wrapper pinned" style="top: 100px;">
            <div class="buysellads hide-on-small-only">
              <h1>TREND</h1>
            </div>
            <div style="height: 1px;">
              <ul class="section table-of-contents">
                <li><a href="#basic" class="active">Carte basique</a></li>
                <li><a href="#image" class="">Carte image</a></li>
                <li><a href="#reveal" class="">Card Reveal</a></li>
                <li><a href="#sizes" class="">Card Sizes</a></li>
                <li><a href="#panel" class="">Card Panel</a></li>
              </ul>
            </div>
          </div>
        </div>
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

  <!--  Scripts-->

  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
	<script>
	  $(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal({
      dismissible: true, // Modal can be dismissed by clicking outside of the modal
      opacity: .5, // Opacity of modal background
      inDuration: 300, // Transition in duration
      outDuration: 200, // Transition out duration
      startingTop: '4%', // Starting top style attribute
      endingTop: '10%', // Ending top style attribute
    }
  );
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
