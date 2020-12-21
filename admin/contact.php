<?php
	session_start();

	require_once('../config.php');
	
	require_once('functions.php');

	if(!isset($_SESSION['mainAdmin'])){
		header('location: index.php');
		die("Don't Try");
	}

		if(isset($_POST['delete'])){

			$email = $_POST['email'];
    

    	 $delete = mysqli_query($connection,"DELETE FROM contact WHERE email='$email'");

    	

    	if($delete === TRUE){
    		echo '<script>


					alert("Successfully Deleted");

					
					window.open("contact.php","_slef");



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
			echo $mytitle= "Contact Sms";
			
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


						$sql = mysqli_query($connection,"SELECT *FROM contact");
						while($result=$sql->fetch_assoc()) :?>

					<div class="table table-responsive">
						<table class="table">
							<thead>
								<th>Name</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Action</th>
								<th>Reply</th>
								
							</thead>

							<tbody>
								<tr>
										<td><?php   if(isset($result['name'])){ echo $result['name']; }  ?></td>
										<td><?php   if(isset($result['email'])){ echo $email =$result['email']; }  ?></td>
										<td><?php   if(isset($result['contact'])){ echo $result['contact'];}   ?></td>
										<td><?php   if(isset($result['sms'])){  echo $result['sms']; }  ?></td>

										<td>
											<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
												<input type="hidden" name="email" value="<?php if(isset($email)){echo $email;}  ?>">
												<input type="submit" value="Delete" name="delete" class="btn btn-danger">
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