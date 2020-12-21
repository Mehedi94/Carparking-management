<?php

	

	require_once('config.php');
	require_once('functions.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
	
	
	<?php 
	include_once('title.php');

		function title(){

			// ... change title name...
			echo $mytitle= "Blog";
			
		}

	?>
</head>

<body>
	
	<?php include_once('header.php');   ?>

		<div class="blog-area">
			<div class="container">

				<?php
					$page=$_GET['page'];
					$url = '?page='.$page;
					$sql = mysqli_query($connection,"SELECT *FROM post WHERE url='$url'");

					while($result = $sql->fetch_assoc()): ?>


				
				<h3><?php echo $result['title'];   ?></h3>
				<h6>Author: <?php  echo $result['name'];   ?></h6>
				<p><?php echo $result['content']; ?></p>


			<?php endwhile; ?>
		
			</div>
		</div>



	<?php include_once('footer.php');   ?>
</body>