<?php

@include 'db_conn.php';

session_start();

?> 
<!DOCTYPE html>
<html lang="ro">

<head>
  <meta charset="UFT-8">
  <meta name="title" content="Gadgets.ro - de la tehnologie pentru tehnologie">
  <meta name="description"
    content="WRITE IT HERE">
  <meta name="keywords" content="iphone, telefoane, gadgets, samsung">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="Isofache Alexandru">
  <title>Gadgets.ro</title>
  <link rel="icon" type="image/x-icon" href="https://i.pinimg.com/originals/ef/c7/f8/efc7f851bfd2db5cea28f01c462681ef.png">
  <link href="CSS/style.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://kit.fontawesome.com/f24826c571.js" crossorigin="anonymous"></script>
</head>


<body>
<?php
include "templates/header.php";
?>

<div class="container">
    <div id="main">
        <div>
            <span> <a href="https://www.facebook.com/" style="color: blue"><b>Facebook</b></a>  <i class="fab fa-facebook" style="color: blue"></i> </span>
            <span> <a href="https://www.instagram.com/" style="color: brown">Instagram</a> <i class="fab fa-instagram" style="color: brown"></i> </span>
            <span> <a href="https://www.youtube.com/" style="color: red">Youtube</a> <i class="fab fa-youtube" style="color: red"></i></span>
        </div>
        <div class="topic">
            <b> Despre noi </b>
        </div>
        <div class="abc">
            <br>

            <p> Bine ati venit la pagina noastra despre noi! Suntem un site dedicat oferirii de informatii si recenzii 
                despre cele mai recente telefoane si accesorii disponibile pe piata. Ne-am dedicat sa va oferim cele mai actualizate 
                si precise informatii pentru a va ajuta sa luati cele mai bune decizii atunci cand alegeti un telefon sau un 
                accesoriu. Ne straduim sa va oferim o varietate de optiuni pentru toate bugetele si nevoile. Ne-am stabilit ca 
                obiectiv sa va oferim cele mai bune recomandari si sa va ajutam sa va gasiti telefonul sau accesoriul perfect. 
                Vizitati-ne in mod regulat pentru cele mai recente noutati si recenzii.</p>
        </div>
    </div>
</div>
<?php
include "templates/footer.php";
?>
</body>
</html>