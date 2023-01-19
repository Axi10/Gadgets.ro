<!DOCTYPE html>

<html>

<head>

    <title>LOGIN</title>

    <link rel="stylesheet" type="text/css" href="CSS/style-login.css">

</head>

<body>
	
     <form action="login.php" method="post">

        <h2>LOGIN</h2>

        <?php if (isset($_GET['error'])) { ?>

            <p class="error"><?php echo $_GET['error']; ?></p>

        <?php } ?>

        <label>Email</label>

        <input type="email" name="email" placeholder="Email"><br>

        <label>Password</label>

        <input type="password" name="password" placeholder="Password"><br> 

        <button data-inline="true" class="left" type="submit">Login</button>
		<button data-inline="true" formaction="signup.php" class="right" type="submit">Sign Up</button>
     </form>
	 
	 
</body>

</html>

