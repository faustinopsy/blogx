<?php

include("../db.php");
$image_path = '';

$response = array();


$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$password = md5($password);





$sql = "INSERT INTO `users`(`name`, `email`,`password`,`role`, `added_on`,`status`) VALUES ('$name','$email','$password','USER',NOW(),'1')";


if ($conn->query($sql) === TRUE) {

	$response['status'] = '1';
	$response['message'] = 'success';
    
} else {
    $response['status'] = '0';
	$response['message'] = 'failed';
}

echo json_encode($response);




?>