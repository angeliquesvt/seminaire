<?php

require_once $_SERVER['DOCUMENT_ROOT']. '/seminaire/controller/controllerFlux.php';

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
        <li><a class="deco" href="./model/logout.php">Déconnexion</a></li>
              </ul>
        <ul id="nav-mobile" class="side-nav">
        		<li><a href="./model/logout.php">Déconnexion</a></li>
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


  <div class="container">
		<div class="row">
      <?php     
      try{   
      $db = connectBd();
        $req = $db->prepare("SELECT * FROM favori JOIN article ON article.id_article=favori.id_article JOIN flux ON flux.id_flux=article.id_flux WHERE id_user=:id");
        $req->bindParam("id",$_SESSION["id_user"]);
        $req->execute();

          while( $article = $req->fetch(PDO::FETCH_ASSOC))
          {
            $image = ($article['urlToImage']);
            $a = $article['titre'];
            if ($a!=null){
              echo "<h3>{$a}</h3>";
            }
 
            if ($image!=null){
              echo "<img src={$image}/>";
            }
          
           
          
          }

          
        }
    catch (Exception $e)
    {
      $e->getMessage();
      echo $e;        
    } ?>

      
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
	</div>


  
<!--  FOOTER -->

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
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  </body>
</html>
