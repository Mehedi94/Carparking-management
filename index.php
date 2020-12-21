<?php

	session_start();

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
					header('location: dashboard/');
				}
				else{
					$fail = "<h6>Wrong Password</h6>";
				}
			}
		}

		
	}
	if(isset($_POST['send'])){
		$name = $_POST['name'];
		$email = $_POST['email'];
		$contact = $_POST['contact'];
		$sms = $_POST['sms'];

		$error = array();

		if(empty($email)){
			$error['emt']='<h6>Email Name is Required</h6>';

		}
		if(empty($sms)){
			$error['sm']='<h6>This Field Required</h6>';
		}

		if(count($error)==0){
			$sms = mysqli_query($connection,"INSERT INTO contact (name,email,contact,sms) VALUES('$name','$email','$contact','$sms')");

			if($sms === TRUE){
				echo '<script>alert("We Got Your Sms.Thank You");</script>';
			}
			else{
				echo '<script>alert("Something Went Wrong.Try Again Later");</script>';
			}
		}
	}


?>


<!DOCTYPE html>
<html lang="en">
<head>
	
	
	<?php 
	include_once('title.php');

		function title(){

			// ... change title name...
			echo $mytitle= "Car Parking Website";
			
		}

	?>
</head>
<body>
	<?php include_once('header.php');   ?>




	<!-- .... BANNER AREA .... -->
	<section class="banner-area">
		<div class="image-noise">
			<div class="container">
				<div class="banner-left col-md-7 col-sm-12 col-xs-12">
					<div class="text-area">
						<h2>Car<span>Park</span></h2>
						<h3>Park You Car To Us</h3>
						<div class="border-area">
							<hr>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo.</p>
					</div>
					<div class="download-area">
						<a href="#" class="custom-btn">Abous Us</a>
					</div>


				</div>
				<div class="banner-right col-md-5 col-sm-12 col-xs-12">
					<div class="trial">

							<div class="trial-text">
								<h4>Don't have a account? Please<a href="signup.php"> Signup</a></h4>
							</div>
							<form action="<?php echo $_SERVER['PHP_SELF'];   ?>" method="POST">
								<input type="email" placeholder="Email"  class="form-control" name="email">
						<?php

								if(isset($error['nt'])){
									echo "<div class='error'>";
										echo $error['nt'];
									echo "</div>";
								}


						?>
								<input type="password" placeholder="Password"  class="form-control" name="pass">
								<?php

									if(isset($fail)){
										echo "<div class='error'>";
											echo $fail;
										echo "</div>";
									}


								?>
								<input type="submit" value="Login" name="info_pass">
							</form>
					</div>
					
				</div>
			</div>
		</div>
	</section>

	<!-- ....SOCIAL AREA .... -->
	<section class="social-area">
		<div class="container">
			<div class="social-text col-md-5 col-sm-12 col-xs-12">
				<h3>soical media</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
				Aenean euismod bibendum laoreet.</p>
			</div>
			<nav class="social-icons col-md-7 col-sm-12 col-xs-12">
				<ul class="nav navbar-nav">
					<li class="facebook"><a href="#"></a></li>
					<li class="twitter"><a href="#"></a></li>
					<li class="google-plus"><a href="#"></a></li>
					<li class="padlet"><a href="#"></a></li>
					<li class="youtube"><a href="#"></a></li>
					<li class="linkdin"><a href="#"></a></li>
					<li class="network"><a href="#"></a></li>
				</ul>
			</nav>
		</div>
	</section>

	

	<!-- .... PICTURE AREA .... -->
	<section class="picture-area">
		<div class="container">
			<div class="picture-area-left col-md-5 col-sm-12 col-xs-12">
				<img class="img-responsive" src="images/my-picture.png" alt="my picture">
			</div>
			<div class="picture-area-text col-md-offset-1 col-md-6 col-sm-12 col-xs-12">
				<h4>Important notice</h4>
				<div class="border-area-orange">
					<hr>
				</div>

				<?php
					$sql = mysqli_query($connection,"SELECT *FROM post");

					while($result = $sql->fetch_assoc()): ?>
					<?php  $url = $result['url']; ?>
				
				<div class="picture-area-title">
					<h4><a href="read.php<?php echo $url; ?>"><span class="glyphicon glyphicon-cloud"></span><?php echo $result['title'];   ?></a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet.</p>
				</div>
				
			<?php endwhile; ?>
			</div>
		</div>
	</section>

	<!-- ... DESCRIPTION AREA ... -->
	<section class="description-area">
		<div class="container">
			<div class="text-area col-md-5 col-sm-12 col-xs-12">
				<h4>Standard picture section</h4>
				<div class="border-area-orange">
					<hr>
				</div>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. <br>Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet.</p>
			</div>
			<div class="description-picture col-md-offset1 col-md-6 col-sm-12 col-xs-12">
				<img  class="img-responsive" src="images/city-picture.png" alt="city picture">
			</div>
		</div>
	</section>
	
	<!-- .... CUSTOMER AREA .... -->
	<section class="customer-area">
		<div class="container">
			<div class="text-area text-center">
				<h2>what our customers are saying</h2>
				<div class="center-border">
					<hr>
				</div>
			</div>
			<div class="customer-area-left col-md-offset-1 col-md-3 col-sm-6 col-xs-12">
				<blockquote><p class="text-center col-md-12 text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus accusamus expedita repellat similique odio aspernatur ex, architecto eaque quo suscipit.</p>
					<footer><img src="images/customer.png" alt="customer" class="col-md-6">Jermy H <h4>Employee</h4></footer>
				</blockquote>
			</div>
			
			<div class="customer-area-mid col-md-offset-1 col-md-3 col-sm-offset-1 col-sm-5 col-xs-12">
				<blockquote><p class="text-center col-md-12 text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus accusamus expedita repellat similique odio aspernatur ex, architecto eaque quo suscipit.</p>
					<footer><img src="images/customer.png" alt="customer" class="col-md-6">Jermy H <h4>Employee</h4></footer>
				</blockquote>
			</div>
			
			<div class="customer-right col-md-offset-1 col-md-3 col-sm-12 col-xs-12">
				<blockquote><p class="text-center col-md-12 text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus accusamus expedita repellat similique odio aspernatur ex, architecto eaque quo suscipit.</p>
					<footer><img src="images/customer.png" alt="customer" class="col-md-6">Jermy H <h4>Employee</h4></footer>
				</blockquote>
			</div>
		</div>
		
	</section>

	
	<!-- .... CONTACT AREA .... -->
	<section class="contact-area">
		<div class="container">
			<h3 class="text-center">contact us</h3>
			<div class="center-border">
				<hr>
			</div>
			<p class="text-center">lorem ipsum is a dummy text odales pulvinar <br> tempor. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
			<div class="input-area-left col-md-12 col-sm-12 col-xs-12">
				<form action="<?php echo $_SERVER['PHP_SELF'];   ?>" id="contact" method="POST">
					<div class="input-area-left col-md-5 col-sm-12 col-xs-12">
						<input type="text" placeholder="Name" name="name">
						<input type="email" placeholder="Email" name="email" required="required">
							<?php

									if(isset($error['emt'])){
										echo "<div class='error'>";
											echo $error['emt'];
										echo "</div>";
									}


								?>
						<input type="text" placeholder="Contact" name="contact">
					</div>
					<div class="input-area-right col-md-offset-1 col-md-6 col-sm-12 col-xs-12">
						
						<input type="text" placeholder="Messege" name="sms" required="required">
						<?php

									if(isset($error['sm'])){
										echo "<div class='error'>";
											echo $error['sm'];
										echo "</div>";
									}


								?>
						<input type="submit" value="Send Messege" name="send">
					</div>
					

				</form>
			</div>
		</div>
	</section>

	<?php include_once('footer.php'); ?>
</body>
</html>


