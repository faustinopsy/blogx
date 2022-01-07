<?php

include("../db.php");
$image_path = '';

$response = array();

$email = $_POST['email'];
$password = $_POST['password'];
$password = md5($password);





$sql = "SELECT * FROm users WHERE email='$email' AND password='$password'";

$result = $conn->query($sql);

$row = $result->fetch_assoc();


if ($result->num_rows > 0) {

	$response['status'] = '1';
	$response['slno'] = $row['slno'];
	$response['role'] = $row['role'];
	$response['name'] = $row['name'];
	$response['message'] = 'success';
    
} else {
    $response['status'] = '0';
	$response['message'] = 'failed';
}

echo json_encode($response);




?>