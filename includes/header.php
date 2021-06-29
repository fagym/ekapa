<?php
    $title = 'Daftar'; 

    require_once 'includes/bootstrap.php';  
?>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.php">EKapa</a>

        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav mr-auto">
            <a class="nav-item nav-link" href="areaparkir.php">Area Parkir</a>
            <a class="nav-item nav-link" href="karcis.php">Karcis</a>
            <a class="nav-item nav-link" href="akun.php">Akun</a>
          </div>
          <div class="navbar-nav ml-auto">
            <?php 
              if(!isset($_SESSION['userid'])){
            ?>
                <a class="nav-item nav-link" href="daftar.php">Daftar 
                <span class="sr-only">(current)</span></a><?php } 
              else { ?>
                <a class="nav-item nav-link" href="logout.php">Logout 
                <span class="sr-only">(current)</span></a>
            <?php } ?>
          </div>
        </div>
    </nav>


  <body>