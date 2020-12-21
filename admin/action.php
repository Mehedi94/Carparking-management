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
					$page=$_GET['page'];
					$url = '?page='.$page;
					$sql = mysqli_query($connection,"SELECT *FROM post WHERE url='$url'");

					while($result = $sql->fetch_assoc()): ?>

					<h2>Update Post</h2>
					<form action="<?php  echo $_SERVER['PHP_SELF']; ?>" method="POST">
						<input type="text" name="title" placeholder="Tile" class="form-control title" value="<?php echo $result['title'];   ?>">
						<textarea name="text" value="<?php echo $result['content'];   ?>"></textarea>

						<input type="submit" value="Update" class="btn btn-primary mypost"  name="post">
					</form>


				
				


			<?php endwhile; ?>

		</div>
	</div>


</body>