<?php
	
	 session_start();

    require_once('../config.php');
    require_once('HelperFunction.php');

        if(!isset($_SESSION['success'])){
        header('location: ../login.php');
        die('Dont Try to Mess. -_- ');
    }



    $email = $_SESSION['email'];


    if(isset($_POST['save'])){

    	$pull = mysqli_query($connection,"SELECT id,name,email,phone FROM user_profile WHERE email='$email'");

    	

    	$car = $_POST['car'];
    	$color = $_POST['color'];
    	$model = $_POST['model'];
    	$qty = $_POST['quantity'];
    	$error = array();

    	if(empty($car)){
    		$error['cr']="<h6>Car Number Required</h6>";
    	}
    	if(empty($model)){
    		$error['md']="<h6>Car Model Required</h6>";
    	}
    	if(empty($color)){
    		$error['cl']="<h6>Car ColorRequired</h6>";
    	}
    	if(empty($car)){
    		$error['qt']="<h6>This Filed Required</h6>";
    	}
    	if(CarNumberCheck()){
    		$error['cn']="This Car already Registred";
    	}

    	if(count($error)==0){
    		while($data= $pull->fetch_assoc()){
				$id =$data['id'];
				$name =$data['name'];
				$email2 =$data['email'];
				$phone =$data['phone'];
			}

		$insert = mysqli_query($connection,"INSERT INTO parking_info(id,name,email,phone,car_number,car_color,car_model,quantity) VALUES('$id','$name','$email2','$phone','$car','$color','$model','$qty')");

		if($insert=== TRUE){
			header('location: cost.php');
		}
		else{
			echo '<script>


					alert("Please Make Your Profile First Or You Have already Registered a Car Already");

					window.open("index.php","_self");



				</script>';
		}	
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




					  
					<div class="input-area-left custom-btn-area col-md-12 col-sm-12 col-xs-12">
						<form action="<?php  echo $_SERVER['PHP_SELF']  ?>" method="POST">
							<input type="text" name="car" placeholder="Car Number">
							                                        <?php

                            if(isset($error['cr'])){
                                echo "<div class='error'>";
                                    echo $error['cr'];
                                echo "</div>";
                            }

                             if(isset($error['cn'])){
                                echo "<div class='error'>";
                                    echo $error['cn'];
                                echo "</div>";
                            }

                        ?>
							<input type="text" name="color" placeholder="Car Color">
							                                        <?php

                            if(isset($error['cl'])){
                                echo "<div class='error'>";
                                    echo $error['cl'];
                                echo "</div>";
                            }

                        ?>
							<input type="text" name="model" placeholder="Car Model">
							                                        <?php

                            if(isset($error['md'])){
                                echo "<div class='error'>";
                                    echo $error['md'];
                                echo "</div>";
                            }

                        ?>
							<input type="number" name="quantity" placeholder="Car Quantity" min="1">
							                                        <?php

                            if(isset($error['qt'])){
                                echo "<div class='error'>";
                                    echo $error['qt'];
                                echo "</div>";
                            }

                        ?>
							<input type="submit" value="Save" name="save">

						</form>

					</div>	
				</div>
			</div>
		</div>
	</div>


	<?php  include_once('../footer.php');    ?>
</body>
</html>