<?php

include("../db.php");

$postid = $_POST['postid'];

$response = array();


	$sql = "SELECT * FROM posts WHERE slno = '$postid' ORDER BY slno desc";
	$result = $conn->query($sql);

	$post_data = array();
	while($row = $result->fetch_assoc())
	 {
	 	$post_data['slno'] = $row['slno'];
	 	$post_data['title'] = $row['title'];
	 	$post_data['description'] = $row['description'];
	 	$post_data['image'] = $image_url.$row['image'];
	 	$post_data['author'] = $row['author'];
	 	$post_data['date'] = $row['post_date'];
	 	$post_data['time_ago'] = time_elapsed($row['post_date']);

	 	array_push($response, $post_data);
	 }

	 function time_elapsed($datetime, $full = false)
	 {
			$now = time();
			$ago = strtotime($datetime);
			$diff   = $now - $ago; 
			$string = array(
			    'ano'  => 31104000,
			    'mes' => 2592000,
			    'semana'  => 604800,
			    'dia'   => 86400,
			    'hora'  => 3600,
			    'minuto'=> 60,
			    'segundo'=>  1
			);

			$data = array();
			foreach ($string as $k => $v) {

			    if($diff > $v){
			        $count    = round($diff / $v);
			        $data[$k] = $count . (($count > 1) ? ' ' . $k .'s' : ' ' . $k);
			        $diff     = $diff % $v;
			    }
			}
			if (!$full) $data = array_slice($data, 0, 1);
			   return $data ? implode(', ', $data) . ' atrás' : 'agora';
		}


echo json_encode($response,JSON_UNESCAPED_SLASHES);

?>