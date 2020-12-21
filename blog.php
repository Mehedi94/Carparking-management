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
					$sql = mysqli_query($connection,"SELECT *FROM post");

					while($result = $sql->fetch_assoc()): ?>
					<?php  $url = $result['url']; ?>

				
				<a href="read.php<?php echo $url ?>"><h3><?php echo $result['title'];   ?></h3></a>
				<h6>Author: <?php  echo $result['name'];   ?></h6>



			<?php endwhile; ?>
			</div>
		</div>



	<?php include_once('footer.php');   ?>
</body>