<?php

	 session_start();

    require_once('../config.php');
    require_once('HelperFunction.php');

        if(!isset($_SESSION['success'])){
        header('location: ../login.php');
        die('Dont Try to Mess. -_- ');
    }

    $today = date("Y-m-d");
						
	$time = date("h:i:sa");
							
	$oneMonth = date( "Y-m-d", strtotime( "$today +30 day" ));

    $email = $_SESSION['email'];

    $insert = mysqli_query($connection,"INSERT INTO cost (id,name,email,phone,car_number,quantity,Start,mytime,finish) SELECT id,name,email,phone,car_number,quantity,'$today','$time','$oneMonth' FROM parking_info WHERE email='$email'");





?>


<!DOCTYPE html>
<html lang="en">
<head>
		<?php  include_once('title.php'); 

		function title(){

			// ... change title name...
			echo $mytitle= "Cost. Car Parking Website";
			
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

					<h3 style="color:#000000">Please Apply For Getting Total Cost</h3>
					
					<?php
						$sql = mysqli_query($connection,"SELECT *FROM cost WHERE email='$email'");

						while($result = $sql->fetch_assoc()){
							$cal = $result['quantity'];

							


							
						


							
						}

						

						if(isset($_POST['submit'])){
						

							$cost = 1000;
							$result = $cost*$cal;
							
							$result = $cost*$cal;
							

							

							$insert = mysqli_query($connection,"UPDATE cost SET  total_cost='$result' WHERE email='$email'");

      						 $tran = rand(1,100).rand(1,100);

   				 			$sql = mysqli_query($connection,"INSERT INTO unpaid(id,name,email,phone,car_number,quantity,Start,mytime,finish,total_cost,transaction_id,status) SELECT id,name,email,phone,car_number,quantity,Start,mytime,finish,total_cost,'$tran','Unpaid' FROM cost WHERE email='$email' ");


							if($insert==TRUE){
								header('location: parkingInfo.php');
							}


						}



					?>

					<h2>You Have </h2>

					<div class="input-area-left custom-btn-area col-md-12 col-sm-12 col-xs-12">
						<form action="<?php $_SERVER['PHP_SELF']    ?>" method="POST">
							
							<input type="submit" value="Apply" name="submit">
						</form>


					</div>	


					  

				</div>
			</div>
		</div>
	</div>
</body>