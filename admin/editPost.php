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
			echo $mytitle= "Admin List";
			
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
					$sql = mysqli_query($connection,"SELECT *FROM post");

					while($result = $sql->fetch_assoc()): ?>
					<?php  $url = $result['url']; ?>

				
				<a href="action.php<?php echo $url; ?>"><h3><?php echo $result['title'];   ?></h3></a>
				<h6>Author: <?php  echo $result['name'];   ?></h6>



			<?php endwhile; ?>
		</div>
	</div>


</body>