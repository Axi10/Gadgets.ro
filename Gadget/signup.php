<?php 

@include 'db_conn.php';

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']); 
   $surname = mysqli_real_escape_string($conn, $_POST['surname']); 
   $email = mysqli_real_escape_string($conn, $_POST['email']); 
   $password = $_POST['password'];
   $cpassword = $_POST['cpassword'];

   $select = " SELECT * FROM users WHERE email = '$email' && password = '$password' "; 

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $error[] = 'Utilizatorul există deja!';

   }else{

      if($password != $cpassword){
         $error[] = 'Parolele nu coincid!';
      }else{
         $insert = "INSERT INTO users(name, surname, email, password) VALUES('$name','$surname','$email','$password')";
         mysqli_query($conn, $insert);
         header('location:login.php');
      }
   }

}; 
?>



<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="CSS/style-signup.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
  </head> 

  <body class="form_body"> 
    <div class="container">
      <div class="wrapper">
        <div class="title"><span>SIGN UP</span></div>
        
        <form action="" method="post"> 
        <?php
          if(isset($error)){
            foreach($error as $error){
                echo '<span class="error-msg">'.$error.'</span>';
            };
          };
          ?> 
      
          <div class="row">
            <i class="fas fa-user"></i> 
            <input type="text" name="name" required placeholder="Name" \>
          </div> 
          <div class="row">
            <i class="fas fa-user"></i> 
            <input type="text" name="surname" required placeholder="Surname">
          </div> 
          <div class="row">
            <i class="fas fa-envelope"></i> 
            <input type="email" name="email" required placeholder="Email">
          </div>
          <div class="row">
            <i class="fas fa-lock"></i>
            <input type="password" name="password" required placeholder="Password">
          </div> 
          <div class="row"> 
            <i class="fas fa-lock"></i>
            <input type="password" name="cpassword" required placeholder="Confirm password"> 
          </div> 
          <div class="row button">
            <input type="submit" name="submit" value="Sign up"> 
          </div> 
          <div style="color: white;">Ai cont? <a href="login.php" style="color: green;">Login</a></div> 
        </form>
      </div>
    </div>

  </body>
</html>
