<?php

include("../db.php");

$response = array();
$post_slno = $_POST['post_slno'];

	$sql = "SELECT *,posts.slno as post_slno,
					comments.slno as comment_slno,
					comments.status as comment_status,
					comments.added_on as comment_date
	 		FROM comments
			LEFT JOIN users ON comments.user_slno = users.slno
			LEFT JOIN posts ON comments.post_slno = posts.slno
			WHERE comments.post_slno = '$post_slno' AND comments.status ='1'

			ORDER BY comments.slno desc";

			// echo $sql;

	$result = $conn->query($sql);

	$comment_data = array();

	while($row = $result->fetch_assoc())
	 {
	 	$comment_data['user_name'] = $row['name'];
	 	$comment_data['post_slno'] = $row['post_slno'];
	 	$comment_data['comment_slno'] = $row['comment_slno'];
	 	$comment_data['comment'] = $row['comment'];
	 	$comment_data['date'] =  date('l jS \of F Y', strtotime(date($row['comment_date'])));

	 	

	 	array_push($response, $comment_data);
	 }


	

echo json_encode($response,JSON_UNESCAPED_SLASHES);

?>