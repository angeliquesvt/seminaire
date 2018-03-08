<?php
/*
if (!isset($_SESSION['email'])) {

         echo "<script type=\"text/javascript\">
         alert(\"Utilisateur non connecté\");
         location=\"./index.php\";
         </script>";
 }*/
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
</head>
<body>
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo"><img src="img/logo/logo.png" width="190px" height="auto" /></a>
      <ul class="right hide-on-med-and-down">
        <li><a class="deco" href="./traitements/logout.php">Déconnexion</a></li>
              </ul>
        <ul id="nav-mobile" class="side-nav">
        		<li><a href="./traitement/logout.php">Déconnexion</a></li>
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
					<h4 class="left">Fil d'actualité</h1>
				</div>
			</div>
      <div class="row">
        <div class="col s12 m9">
      <div class="ui container">
          <div id="sort1" data-sortable=".column" class="ui stackable three column grid relative">
              <div class="column" data-position='0' data-id='1'>
                  <div class="ui fluid card">
                      <div class="content"><img src="" class="right floated mini ui image">
                          <div class="header">Elliot Fu</div>
                          <div class="meta">Friends of Veronika</div>
                          <div class="description">Elliot requested permission to view your contact details</div>
                      </div>
                  </div>
              </div>
              <div class="column" data-position='1' data-id='2'>
                  <div class="ui fluid card">
                      <div class="content"><img src="" class="right floated mini ui image">
                          <div class="header">Elliot Fu</div>
                          <div class="meta">Friends of Veronika</div>
                          <div class="description">Elliot requested permission to view your contact details</div>
                      </div>
                  </div>
              </div>
              <div class="column" data-position='2' data-id='3'>
                  <div class="ui fluid card">
                      <div class="content"><img src="" class="right floated mini ui image">
                          <div class="header">Elliot Fu</div>
                          <div class="meta">Friends of Veronika</div>
                          <div class="description">Elliot requested permission to view your contact details</div>
                      </div>
                  </div>
              </div>
              <div class="column" data-position='3' data-id='4'>
                  <div class="ui fluid card">
                      <div class="content"><img src="" class="right floated mini ui image">
                          <div class="header">Elliot Fu</div>
                          <div class="meta">Friends of Veronika</div>
                          <div class="description">Elliot requested permission to view your contact details</div>
                      </div>
                  </div>
              </div>
              <div class="column" data-position='4' data-id='5'>
                  <div class="ui fluid card">
                      <div class="content"><img src="" class="right floated mini ui image">
                          <div class="header">Elliot Fu</div>
                          <div class="meta">Friends of Veronika</div>
                          <div class="description">Elliot requested permission to view your contact details</div>
                      </div>
                  </div>
              </div>
              <div class="column" data-position='5' data-id='6'>
                  <div class="ui fluid card">
                      <div class="content"><img src="" class="right floated mini ui image">
                          <div class="header">Elliot Fu</div>
                          <div class="meta">Friends of Veronika</div>
                          <div class="description">Elliot requested permission to view your contact details</div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
    </div>
    <div class="col hide-on-small-only m3 l2">
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
  <script src="dist/sortable.js"></script>
<script>
    sortable = new Sortable(document.querySelector('#sort1'));
    sortable.success = function(results){
        console.log(results);
    }
</script>
  </body>
</html>
