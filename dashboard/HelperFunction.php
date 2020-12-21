<?php



	function insertHelperUsers(){
		require_once('../config.php');

		global $email;
		global $name;
	
		global $connection;

	$pull = mysqli_query($connection,"SELECT id,name FROM users WHERE email='$email'");

		while($result= $pull->fetch_assoc()){
		$result['id'];
		$result['name'];
		

		$_SESSION['id'] = $result['id'];
		$_SESSION['name'] = $result['name'];

		}
	}


	function CarNumberCheck(){
		global $email;
		global $connection;
		global $car;

		$sql = mysqli_query($connection,"SELECT car_number FROM parking_info WHERE car_number='$car'");

		if(mysqli_num_rows($sql)>=1){
			return true;
		}
	}


	 	function generateSessionToken(){
		$data['_token'] = md5(uniqid(rand(), true));
		$_SESSION['_token'] = $data['_token'];
	}



?>