<?php

 if (!isset($_SERVER['HTTP_REFERER'])){ 

 		
 } 

else { 

// The script 

	 function emailChecker(){
 	require_once('config.php');
 	global $email;
 	global $connection;

 	$emailCheck = mysqli_query($connection,"SELECT email FROM users WHERE email='$email'");

 	if(mysqli_num_rows($emailCheck)>=1){
 		return true;
 	}
 }

}

?>