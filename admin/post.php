<?php
	session_start();

	require_once('../config.php');
	
	require_once('functions.php');
	if(!isset($_SESSION['mainAdmin'])){
		header('location: index.php');
		die("Don't Try");
	}

	if(isset($_POST['post'])){
		 $name = $_SESSION['AdminName'];
		 
		 $title = $_POST['title'];
		 $rand = rand(1,100).rand(1,100);
		 $url ='?page='.$rand;
		 $text = $_POST['text'];
		 $error = array();

		 if(empty($text)){
		 	echo $error['te']='<script>alert("You Can Not Post Blank");</script>';
		 }

		 if(empty($title)){
		 	echo $error['ti']='<script>alert("You Can Not Post Blank");</script>';
		 }
		 if(count($error)==0){
		 	$insert = mysqli_query($connection,"INSERT INTO post(name,url,title,content) VALUES('$name','$url','$title','$text')");

		 	if($insert === TRUE){
		 		echo '<script>alert("Your Post Published");</script>';
		 	}
		 }
		 
		 


	}



?>

<!DOCTYPE html>
<html lang="en">
<head>
<?php	include_once('title.php');

			function title(){

			// ... change title name...
			echo $mytitle= "Add New Post";
			
		}

	?>
	<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  	<script>tinymce.init({ selector:'textarea' });</script>
</head>

<body>
	
	<?php  include_once('ad-head.php') ?>
	<div class="main-sidebar">
		<!-- ...... admin menu ..... -->
			<?php include_once("ad_menu.php"); ?>
	
	
	</div>


	<div class="page-content">
		<div class="container">
			<h2>Add New Post</h2>
			<form action="<?php  echo $_SERVER['PHP_SELF']; ?>" method="POST">
				<input type="text" name="title" placeholder="Tile" class="form-control title">
				<textarea name="text"></textarea>

				<input type="submit" value="Post" class="btn btn-primary mypost"  name="post">
			</form>
		</div>
	</div>



</body>