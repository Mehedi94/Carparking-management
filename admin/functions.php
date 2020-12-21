<?php



function nameCheck(){
	require_once('../config.php');
	global $connection;
	global $name;


	$check = mysqli_query($connection,"SELECT name FROM admin WHERE name='$name'");

	if(mysqli_num_rows($check)>=1){
		return true;
	}
}





?>