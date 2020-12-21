<?php
	session_start();

	require_once('../config.php');
	
	require_once('functions.php');
	if(!isset($_SESSION['mainAdmin'])){
		header('location: index.php');
		die("Don't Try");
	}

		



					


			



?>

<!DOCTYPE html>
<html lang="en">
<head>
	
<?php

	include_once('title.php');

			function title(){

			// ... change title name...
			echo $mytitle= "Admin Dashboard";
			
		}

	?>
</head>
<body>

	<?php  include_once('ad-head.php') ?>
	<div class="main-sidebar">
		<!-- ...... admin menu ..... -->
			<?php include_once("ad_menu.php"); ?>
	
		</div>

	<div class="page-content">
		<div class="container">
			<h2 style="text-transform: capitalize;">Search Profile By Using ID.</h2>

			<div class="search-area col-md-7 col-sm-12 col-xs-12">
				<form action="<?php echo $_SERVER['PHP_SELF'];  ?>" method="POST">
					<input class=" from-control" type="text" name="object" placeholder="ID">
					<input type="submit" value="Search" class="btn btn-primary from-control" name="search">
				</form>
			</div>


			<?php

						if(isset($_POST['search'])){
							$object = $_POST['object'];

							$data = mysqli_query($connection,"SELECT *FROM user_profile WHERE id='$object'");
							while($dataPull = $data->fetch_assoc()){
					    	$name = $dataPull['name'];
					     	$email2 = $dataPull['email'];
					    	$phone = $dataPull['phone'];
					    	$picUrl = $dataPull['pic'];
					   		}





						}


			?>
                    <div class="profile-picture">
                       <?php
                            if(isset($picUrl)){
                                $first = ' <img src="../dashboard/';
                                $second = '" alt="Profile Picture"';
                                echo $first.$picUrl.$second;
                            }


                       ?>

                     

                      
                    </div>
                    <div class="profile-description col-md-12 col-sm-12 col-xs-12">
                        <h3><?php 
                            if(isset($name)){
                                echo $name ; 
                            } 

                            ?>
                            


                        </h3>
                        <h3 style="text-transform: lowercase;"><span style="text-transform: capitalize;color:#00000A"></span> <?php if(isset($email2)){echo $email2;  } ?></h3>
                        <h3><?php if(isset($phone)){echo $phone;  } ?></h3>
                    </div>
			
				

		</div>
	</div>
</body>
</html>