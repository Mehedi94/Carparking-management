<?php
	
	 session_start();

    require_once('../config.php');
    require_once('HelperFunction.php');


      if(!isset($_SESSION['success'])){
        header('location: ../login.php');
        die('Dont Try to Mess. -_- ');
    }



    $email = $_SESSION['email'];
    if(isset($_POST['delete'])){
    	$num = $_POST['number'];

    	$delete = mysqli_query($connection,"DELETE FROM parking_info WHERE car_number='$num'");


    	

    	if($delete === TRUE){
    		$delete2 = mysqli_query($connection,"DELETE FROM unpaid WHERE car_number='$num'");
    		$delete3 = mysqli_query($connection,"DELETE FROM cost WHERE car_number='$num'");
    		echo '<script>
					

					alert("Successfully Deleted");

					window.open("parkingDetails.php","_self");



				</script>';
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
					
					<h2 style="color:#000000;">Your Registered Data</h2>


					  

				</div>
			</div>
		</div>
	</div>
	<div class="result-area col-md-12 col-xs-12 col-sm-12">
		<div class="container">
			<?php


						$sql = mysqli_query($connection,"SELECT *FROM location WHERE email='$email'");
						while($result=$sql->fetch_assoc()) :?>

						<h4>Transaction Number: <?php   if(isset($result['transaction_id'])){ echo $result['transaction_id']; }  ?> </h4>

					<div class="table table-responsive">
						<table class="table">
							<thead>
								<th>Car Number</th>
								<th>Quantity</th>
								<th>Start</th>
								<th>Finish</th>
								<th>Parking Location</th>
								<th>Status</th>
								
							</thead>

							<tbody>
								<tr>
										<td><?php   if(isset($result['car_number'])){ echo $number= $result['car_number']; }  ?></td>
										<td><?php   if(isset($result['quantity'])){ echo $result['quantity']; }  ?></td>
										<td><?php   if(isset($result['Start'])){ echo $result['Start'];}   ?></td>
										<td><?php   if(isset($result['finish'])){  echo $result['finish']; }  ?></td>
										<td><?php   if(isset($result['parking_location'])){ echo $result['parking_location']; }  ?></td>
										<td><?php   if(isset($result['status'])){ echo $result['status']; }  ?></td>
								</tr>
							</tbody>

						</table>
					</div>

				<?php endwhile; ?>					
		</div>
	</div>


	<?php  include_once('../footer.php');    ?>
</body>
</html>