<?php

include("../db.php");

$response = array();

$user_slno = $_POST['user_slno'];

if($user_slno == 'ALL')
$where = '';
else
$where = "WHERE comments.user_slno = '$user_slno'";

	$sql = "SELECT *,posts.slno as post_slno,
					comments.slno as comment_slno,
					comments.status as comment_status
	 		FROM comments
			LEFT JOIN users ON comments.user_slno = users.slno
			LEFT JOIN posts ON comments.post_slno = posts.slno
			$where

			ORDER BY comments.slno desc";

			// echo $sql;

	$result = $conn->query($sql);

	$comment_data = array();

	while($row = $result->fetch_assoc())
	 {
	 	$comment_data['user_name'] = $row['name'];
	 	$comment_data['post_slno'] = $row['post_slno'];
	 	$comment_data['post_title'] = '<i><span class="post_list_title text-danger" data-id="'.$row['post_slno'].'">'.$row['title'].'<span></i>';
	 	$comment_data['comment_slno'] = $row['comment_slno'];
	 	$comment_data['comment'] = $row['comment'];

	 	
	 	if($row['comment_status'] == 1)
	 	{
	 		$status = "checked";
	 		$msg = "<span class='badge badge-success'>Aprovado</span>";
	 		$data_status = 1;
	 	}
	 	else
	 	{
	 		$status = "";
	 		$msg = "<span class='badge badge-danger'>Em Análise</span>";
	 		$data_status = 0;
	 	}


	 		if($user_slno == 'ALL')
	 		{
	 		$comment_data['comment_status'] ="<span id='comment_status".$row['comment_slno']."'><label class='switch'><input type='checkbox' ".$status." class='comment_status'><span class='slider round' id='comment_status".$row['comment_slno']."' data-status=".$data_status." data-comment_slno=".$row['comment_slno']."></span></span></label>";
	 		}
	 		
	 		else
	 		{
	 		$comment_data['comment_status'] ="<div>".$msg."</div>";
	 		}
	 	

	 	

	 	array_push($response, $comment_data);
	 }


	

echo json_encode($response,JSON_UNESCAPED_SLASHES);

?>