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
<?php	include_once('title.php');

			function title(){

			// ... change title name...
			echo $mytitle= "Users List";
			
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


						$sql = mysqli_query($connection,"SELECT *FROM user_profile");
						while($result=$sql->fetch_assoc()) :?>


						<h4>Total Users: <span style="color:blue;"><?php  $sql2= mysqli_query($connection,"SELECT  count(email) FROM user_profile");  
						
								echo mysqli_num_rows($sql2);
						

						 ?></span></h4>



					<div class="table table-responsive">
						<table class="table">
							<thead>
								<th>Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Action</th>
								
								
							</thead>

							<tbody>
								<tr>
										<td><?php   if(isset($result['name'])){ echo $result['name']; }  ?></td>
										<td><?php   if(isset($result['email'])){ echo $email =$result['email']; }  ?></td>
										
										<td><?php   if(isset($result['phone'])){ echo $result['phone'];}   ?></td>
										

										<td>
											<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
												<input type="hidden" name="email" value="<?php if(isset($email)){echo $email;}  ?>">
												<input type="submit" value="Remove" name="remove" class="btn btn-danger">
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