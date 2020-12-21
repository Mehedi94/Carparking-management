<?php
	session_start();

	require_once('../config.php');
	
	require_once('functions.php');
	if(!isset($_SESSION['mainAdmin'])){
		header('location: index.php');
		die("Don't Try");
	}
	if(isset($_POST['unpaid'])){
    	$num = $_POST['number'];
    	$today = date("Y-m-d");
						
		$time = date("h:i:sa");
							
		$oneMonth = date( "Y-m-d", strtotime( "$today +30 day" ));

    	$paid = mysqli_query($connection,"INSERT INTO paid(id,name,email,phone,car_number,quantity,Start,mytime,finish,total_cost,transaction_id,status) SELECT id,name,email,phone,car_number,quantity,'$today','$time','$oneMonth',total_cost,transaction_id,'Paid' FROM unpaid WHERE car_number='$num' ");

    	 $delete = mysqli_query($connection,"DELETE FROM unpaid WHERE car_number='$num'");

    	

    	if($delete === TRUE){
    		echo '<script>


					alert("Successfully Marked As Paid");

					window.open("unpaid.php","_self");



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
			echo $mytitle= "Unpaid Users List";
			
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


						$sql = mysqli_query($connection,"SELECT *FROM unpaid");
						while($result=$sql->fetch_assoc()) :?>

						<h4 style="color: red">Transaction Number: <?php   if(isset($result['transaction_id'])){ echo $result['transaction_id']; }  ?> </h4>

					<div class="table table-responsive">
						<table class="table">
							<thead>
								<th>ID</th>
								<th>Car Number</th>
								<th>Quantity</th>
								<th>Start</th>
								<th>Finish</th>
								<th>Total Cost</th>
								<th>Status</th>
								<th>Action</th>
							</thead>

							<tbody>
								<tr>
										<td><?php   if(isset($result['id'])){ echo $number= $result['id']; }  ?></td>
										<td><?php   if(isset($result['car_number'])){ echo $number= $result['car_number']; }  ?></td>
										<td><?php   if(isset($result['quantity'])){ echo $result['quantity']; }  ?></td>
										<td><?php   if(isset($result['Start'])){ echo $result['Start'];}   ?></td>
										<td><?php   if(isset($result['finish'])){  echo $result['finish']; }  ?></td>
										<td><?php   if(isset($result['total_cost'])){ echo $result['total_cost']; }  ?></td>
										<td><?php   if(isset($result['status'])){ echo $result['status']; }  ?></td>
										<td>
											<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
												<input type="hidden" name="number" value="<?php if(isset($number)){echo $number;}  ?>">
												<input type="submit" value="Mark As Paid" name="unpaid" class="btn btn-primary">
											</form>
										</td>
								</tr>
							</tbody>

						</table>
					</div>


				<?php endwhile; ?>
		</div>
	</div>


</body>