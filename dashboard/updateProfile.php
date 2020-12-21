<?php
	
	 session_start();

    require_once('../config.php');
    require_once('HelperFunction.php');

        if(!isset($_SESSION['success'])){
        header('location: ../login.php');
        die('Dont Try to Mess. -_- ');
    }



    $email = $_SESSION['email'];

    $data = mysqli_query($connection,"SELECT *FROM user_profile WHERE email='$email'");
    while($dataPull = $data->fetch_assoc()){
    	$name = $dataPull['name'];
     	$email2 = $dataPull['email'];
    	$phone = $dataPull['phone'];
    	$picUrl = $dataPull['pic'];
    }

    if(isset($_POST['update'])){
    	$phone2 = $_POST['phone'];

    	
    	
    	$update = mysqli_query($connection,"UPDATE user_profile SET phone='$phone2' WHERE email = '$email'");

    	if($update === TRUE){
    		echo "<script>alert('Your Phone Number Has been Updated');</script>";
    		echo '<script>window.open("updateProfile.php","_self")</script>';
    	}
    	else{
    		echo "<script>alert('Something Went Wrong');</script>";
    	}
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
						<img src="<?php if(isset($picUrl)){ echo $picUrl; }   ?>" alt="Profile Picture">

						<?php     ?>
					</div>
					<div class="profile-description col-md-12 col-sm-12 col-xs-12">
						<h3>Name: <?php if(isset($name)){ echo $name; }   ?></h3>
						<h3 style="text-transform: lowercase;"><span style="text-transform: capitalize;color:#00000A">Email:</span> <?php if(isset($email2)){ echo $email2; }   ?></h3>
						
						<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
							<input type="number" name="phone" value="<?php echo $phone ?>">
							<input type="submit" value="Update" name="update">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



	<?php  include_once('../footer.php');    ?>
</body>
</html>