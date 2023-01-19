<header>
        <div class="row">
			<div class="logo">
              <a href="home.php"><img src="logo.png"alt="Logo-ul nu a fost incarcat" /></a>
			</div>
          <div class="col flex right">
            <div class="user">
              <a href="login.php"> <i class="fa-sharp fa-solid fa-user" style="font-size:40px;color:black;margin-bottom: 14px;" ></i></a>
            </div>
			<?php if(isset($_SESSION['name'])) { ?>
			<div class="name">
              <p>Bine ai venit, <span><?php echo $_SESSION['name'] ?></span> <span><?php echo $_SESSION['surname'] ?></span>! </p> 
            </div>
			<div class="user">
			<a href="logout.php"><i <i class="fa-solid fa-right-from-bracket" style="font-size:40px;color:black;margin-bottom: 14px;"></i></a>
			</div>
			<?php } ?>
          </div>
        </div>
      </div>

      <?php
include "navbar.php";

?>
  </header>
