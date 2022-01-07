<?php
include("../db.php");
$response = array();

$comment = $_POST['comment'];
$post_slno = $_POST['post_slno'];
$user_slno = $_POST['user_slno'];


$sql = "INSERT INTO `comments`(`user_slno`, `post_slno`, `comment`, `status`, `added_on`) VALUES ('$user_slno','$post_slno','$comment','0',NOW())";


if ($conn->query($sql) === TRUE) {

	$response['status'] = '1';
	$response['message'] = 'success';
    
} else {
    $response['status'] = '0';
	$response['message'] = 'failed';
}

echo json_encode($response);
?>