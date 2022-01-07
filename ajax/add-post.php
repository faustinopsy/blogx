<?php

include("../db.php");
$image_path = '';

$response = array();

$title = $_POST['title'];
$description = $_POST['description'];

$types = array('image/jpeg', 'image/gif', 'image/png');

if (in_array($_FILES['post_image']['type'], $types)) {
    
    if(isset($_FILES)){
            $imageUpload = $_FILES['post_image']['name'];
            $image_tmp =$_FILES['post_image']['tmp_name'];
            if($imageUpload!='')
{
      move_uploaded_file($image_tmp,"../images/".$imageUpload);
      $image_path = $imageUpload;
}



}

}

else
{
    $response['status'] = '2';
	$response['message'] = 'invalid file name';
}



$sql = "INSERT INTO `posts`(`title`, `description`,`image`,`author`, `post_date`) VALUES ('$title','$description','$image_path','Mahesh',NOW())";



if ($conn->query($sql) === TRUE) {

	$response['status'] = '1';
	$response['message'] = 'success';
    
} else {
    $response['status'] = '0';
	$response['message'] = 'failed';
}

echo json_encode($response);




?>