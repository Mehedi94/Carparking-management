<?php
	session_start();

	require_once('../config.php');
	
	require_once('functions.php');
	if(isset($_SESSION['mainAdmin'])){
		header('location: dashboard.php');
	}
	
	if(isset($_POST['info_pass'])){
		$name = $_POST['username'];
		$pass = $_POST['pass'];
		$error = array();


		if($name==NULL){
			 $error['nm']="<h4>Usernmae Required</h4>";
		}
		if($pass==NULL){
			 $error['pa']="<h4>Password required</h4>";
		}
		if(!nameCheck()){
			 $error['wr']="<h4>Wrong Username</h4>";
		}
		
		
		if(count($error)==0){
			$sql = mysqli_query($connection,"SELECT *FROM admin WHERE name='$name'");

			while($val = $sql->fetch_assoc()){
				 $val['pass'];
				 $role= $val['role'];

				 $pass2 = md5($pass);

				 if($pass2 == $val['pass']){
				 	
				 	$_SESSION['AdminName']= $name;
				 	$_SESSION['role']= $role;
				 	$_SESSION['mainAdmin']='';

				 	header('location: dashboard.php');
				 }
				 else{
				 	 $fail= "<h4>Wrong Password</h4>";
				 }
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
			echo $mytitle= "Admin Login";
			
		}

	?>
</head>
<body class="admin-body">
	<div class="admin-area col-md-12 col-sm-12 col-xs-12">
		<div class="container">
			<div class="form-area">
					<h3 style="color:#192a56">Admin Login | Car- Online Car Parking  Website</h3>
				<form action="" method="POST">
					<input type="text" name="username" placeholder="Username">
					<div class="error">
						<?php 
							if(isset($error['nm'])){
								echo $error['nm'];
							}
							if(isset($error['wr'])){
							    echo $error['wr'];
							}
						 ?>
						 
					</div>
					<input type="password" name="pass" placeholder="Password">
					<div class="error">
						<?php 
							if(isset($error['pa'])){
								echo $error['pa'];
							}
						
							if(isset($fail)){
							    echo $fail;
							}
						 ?>
					</div>
					<input type="submit" value="Login" name="info_pass" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>
</body>
</html>