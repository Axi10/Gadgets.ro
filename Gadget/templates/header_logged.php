<header class="page-header">
        <div class="row">
			<div class="logo">
              <a href="home_logged.php"><img src="logo.png"alt="Logo-ul nu a fost incarcat" /></a>
			</div>
          <div class="col flex right">
			<div class="name">
              <p>Bine ai venit, <span><?php echo $_SESSION['name'] ?></span> <span><?php echo $_SESSION['surname'] ?></span>! </p> 
            </div>
			<div class="user">
			<a href="logout.php"><i <i class="fa-solid fa-right-from-bracket" style="font-size:40px;color:black;margin-bottom: 14px;"></i></a>
			</div>
			
          </div>
        </div>

      <ul class="nav">
        <li><a href="iphone_logged.php">iPHONE</a></li>
        <li><a href="samsung_logged.php">SAMSUNG</a></li>
        <li><a href="altele_logged.php">ALTELE</a></li>
        <li><a href="accesorii_logged.php">ACCESORII</a></li>
        <li><a href="about_us.php">DESPRE NOI</a></li>
		</ul>
  </header>