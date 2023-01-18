<?php 
include 'Database/functions.php';
session_start();
@include 'Database/db_conn.php';
$db= $conn;
$coloane = ['id', 'nume', 'pret', 'data'];


$fetchData = fetch_data($db, 'iphone', $coloane);

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




<?php
include "templates/footer.php";
?>
</body>

</html>