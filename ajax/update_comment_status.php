<?php

include("../db.php");
$image_path = '';

$response = array();

$comment_slno = $_POST['comment_slno'];
$comment_status = $_POST['comment_status'];



$sql = "UPDATE `comments` SET `status`='$comment_status' WHERE comments.slno='$comment_slno'";

if ($conn->query($sql) === TRUE) {

	$response['status'] = '1';
	$response['message'] = 'success';
	

    
} else {
    $response['status'] = '0';
	$response['message'] = 'failed';
}



echo json_encode($response);




?>