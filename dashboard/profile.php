<?php
	
	 session_start();

    require_once('../config.php');
    require_once('HelperFunction.php');

     if(!isset($_SESSION['success'])){
        header('location: ../login.php');
        die('Dont Try to Mess. -_- ');
    }


    $email = $_SESSION['email'];

    $data = mysqli_query($connection,"SELECT *FROM user_profile  WHERE email='$email'");
    while($dataPull = $data->fetch_assoc()){
    	$name = $dataPull['name'];
     	$email2 = $dataPull['email'];
    	$phone = $dataPull['phone'];
    	$picUrl = $dataPull['pic'];
    }





?>

<!DOCTYPE html>
<html lang="en">
<head>
		<?php  include_once('title.php'); 

		function title(){

			// ... change title name...
			echo $mytitle= "Profile. Car Parking Website";
			
		}

	?>
</head>
<body>
		<?php  include_once('header.php');  ?>

	<div class="user-area">
		<div class="container">
			<?php include_once('sidebar.php'); ?>


			<div class="dashboard-area">
				<div class="container">
					<div class="profile-picture">
						<img src="<?php  echo $picUrl   ?>" alt="Profile Picture">

						<?php     ?>
					</div>
					<div class="profile-description col-md-12 col-sm-12 col-xs-12">
						<h3>Name: <?php 
							if(isset($name)){
								echo $name ; 
							} 

							?>
							


						</h3>
						<h3 style="text-transform: lowercase;"><span style="text-transform: capitalize;color:#00000A">Email:</span> <?php if(isset($email2)){echo $email2;  } ?></h3>
						<h3>Phone: <?php if(isset($phone)){echo $phone;  } ?></h3>
					</div>
				</div>
			</div>
		</div>
	</div>



	<?php  include_once('../footer.php');    ?>
</body>
</html>