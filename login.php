<?php

	session_start();

	if(isset($_SESSION['success'])){
		header('location: ./dashboard/');
		die('Dont Try to Mess. -_- ');
	}

	require_once('config.php');
	require_once('functions.php');

	if(isset($_POST['info_pass'])){

		$email = $_POST['email'];
		$pass  = $_POST['pass'];
		$error = array();

		if(!emailChecker()){
			$error['nt']="<h6>This email is not registered</h6>";
		}

		if(count($error)==0){
			$encry = md5($pass);

			$check =mysqli_query($connection,"SELECT pass FROM users WHERE email='$email'");

			while($passHolder = $check->fetch_assoc()){
				if($encry==$passHolder['pass']){
					
					$_SESSION['success']='';
					$_SESSION['email']=$email;
					header('location: dashboard/index.php');
				}
				else{
					$fail ="<h6>Wrong Password</h6>";
				}
			}
		}

		
	}


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include_once('title.php'); ?>
	<?php
		function title(){
			echo "Login To Your Account";
		}


	?>
</head>
<body>
	<?php include_once('header.php');  ?>
		

		<section class="custom-box">
		<div class="container">
			<h3 class="text-center">Sign Up</h3>
			<div class="center-border">
				<hr>
			</div>
			<h4 class="text-center">Don't Have An Account  ? then please         
			 <a href="signup.php">Signup</a>.</h4>
			<div class="input-area-left custom-btn-area col-md-12 col-sm-12 col-xs-12">
				<form action="<?php echo $_SERVER['PHP_SELF'];   ?>" method="POST">
					<div class="input-area-left col-md-5 col-sm-12 col-xs-12">
						
						
						<input type="email" placeholder="Email" name="email">
						
						<?php

							if(isset($error['nt'])){
								echo "<div class='error'>";
									echo $error['nt'];
								echo "</div>";
							}


						?>
						
						<input type="password" placeholder="Password" name="pass">
						<?php

							if(isset($fail)){
								echo "<div class='error'>";
									echo $fail;
								echo "</div>";
							}


						?>
						<input type="submit" value="Sign Up" name="info_pass">
					</div>
					

				</form>
			</div>
		</div>
	</section>


	<?php include_once('footer.php'); ?>
</body>
</html>