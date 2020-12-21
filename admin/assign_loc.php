<?php	
	session_start();

	require_once('../config.php');
	
	require_once('functions.php');
	if(!isset($_SESSION['mainAdmin'])){
		header('location: index.php');
		die("Don't Try");
	}
		if(!isset($_SESSION['mainAdmin'])){
		header('location: index.php');
		die("Don't Try");
	}

	if(isset($_POST['save'])){
    	$num = $_POST['number'];
    	$location = $_POST['location'];
    	

    	$loc = mysqli_query($connection,"INSERT INTO location(id,email,car_number,quantity,Start,mytime,finish,parking_location,transaction_id,status) SELECT id,email,car_number,quantity,Start,mytime,finish,'$location',transaction_id,status FROM paid WHERE car_number='$num' ");

    	 

    	

    	if($loc === TRUE){
    		echo '<script>


					alert("Location Assigned Successfully");

					window.open("assign_loc.php","_self");



				</script>';
    	}
    	else{
    		    		echo '<script>


					alert("Location  already Assigned For this");

					window.open("carinfo.php","_self");



				</script>';
    	}
    }



?>
<!DOCTYPE html>
<html lang="en">
<head>
<?php	include_once('title.php');

			function title(){

			// ... change title name...
			echo $mytitle= "Assign Location";
			
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
			<?php


						$sql = mysqli_query($connection,"SELECT *FROM paid");
						while($result=$sql->fetch_assoc()) :?>

						<h4>Transaction Number: <?php   if(isset($result['transaction_id'])){ echo $result['transaction_id']; }  ?> </h4>
			
	

					<div class="table table-responsive">
						<table class="table">
							<thead>
								<th>ID</th>
								<th>Car Number</th>
								<th>Quantity</th>
								<th>Start</th>
								<th>Finish</th>
								<th>Status</th>
								<th> Assign Action</th>
							</thead>

							<tbody>
								<tr>
										<td><?php   if(isset($result['id'])){ echo $number= $result['id']; }  ?></td>
										<td><?php   if(isset($result['car_number'])){ echo $number= $result['car_number']; }  ?></td>
										<td><?php   if(isset($result['quantity'])){ echo $result['quantity']; }  ?></td>
										<td><?php   if(isset($result['Start'])){ echo $result['Start'];}   ?></td>
										<td><?php   if(isset($result['finish'])){  echo $result['finish']; }  ?></td>
										<td><?php   if(isset($result['status'])){ echo $result['status']; }  ?></td>
										<td>
										<?php   
											$check = mysqli_query($connection,"SELECT *FROM location WHERE car_number='$number'");
												while($pull = $check->fetch_assoc()){
								 				$already=$pull['parking_location'];
											}

										?>
											<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
												<input type="hidden" name="number" value="<?php if(isset($number)){echo $number;}  ?>">
												<input type="text" name="location" placeholder="Location" value="<?php if(isset($already)){echo $already;}   ?>">
												<input type="submit" value="Save" name="save" class="btn btn-primary">
											</form>
										</td>
								</tr>
							</tbody>

						</table>
					</div>
					<hr>

				<?php endwhile; ?>
		</div>
	</div>
</body>