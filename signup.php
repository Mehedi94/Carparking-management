<?php





	session_start();

	if(isset($_SESSION['success'])){
		header('location: ./dashboard/');
		die('Dont Try to Mess. -_- ');
	}

	require_once('config.php');

	require_once('functions.php');

	if(isset($_POST['info_pass'])){

		$name = $_POST['name'];

		$email = $_POST['email'];

		$pass = $_POST['pass'];

		$error = array();

		if($name == NULL){
			$error['nm']="<h6>Name Can Not Be Emplty</h6>";
		}
		if($email == NULL){
		    $error['em']="<h6>Email Can Not Be Emplty</h6>";
		}
		if($pass == NULL){
			$error['ps']="<h6>Password Can Not Be Emplty</h6>";
		}
		if(emailChecker()){
			$error['ex']="<h6>This Email is already exist</h6>";
		}

		if(count($error)==0){
			

			$encry =md5($pass);

			$insert = mysqli_query($connection,"INSERT INTO users (name,email,pass) VALUES('$name','$email','$encry')");



			if($insert=== TRUE){
				header('location: login.php');
			}
			else{
				$fail="<h6>Info Went Wrong</h6>";
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
			echo "Sign Up Page";
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
			<h4 class="text-center">If you have account already ? then please         
			 <a href="login.php">login</a>.</h4>
			 <?php   

			 		if(isset($fail)){
			 			echo "<div class='error'>";
			 			echo $fail;

			 			echo "</div>";
			 		}



			   ?>
			<div class="input-area-left col-md-12 col-sm-12 col-xs-12">
				<form action="<?php echo $_SERVER['PHP_SELF'];   ?>" method="POST">
					<div class="input-area-left col-md-5 col-sm-12 col-xs-12">
						<input type="text" placeholder="Name" name="name">
						<?php  
							if(isset($error['nm'])){
								echo "<div class='error'>";
										echo $error['nm']; 
								echo "</div>";
							}
						 ?>
						<input type="email" placeholder="Email" name="email">
						<?php  
							if(isset($error['ex'])){
								echo "<div class='error'>";
										echo $error['ex']; 
								echo "</div>";
							}


								if(isset($error['em'])){
								echo "<div class='error'>";
										echo $error['em']; 
								echo "</div>";
							}

						 ?>
						
					</div>
					<div class="input-area-right col-md-offset-1 col-md-6 col-sm-12 col-xs-12">
						
						<input type="password" placeholder="Password" name="pass">
						<?php  
							if(isset($error['ps'])){
								echo "<div class='error'>";
										echo $error['ps']; 
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