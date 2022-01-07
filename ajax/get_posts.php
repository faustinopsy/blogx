<?php

include("../db.php");

$response = array();

$start = $_POST['start'];
$end = $_POST['end'];
	


	$sql = "SELECT * FROM posts ORDER BY slno desc LIMIT $start,$end";
	$result = $conn->query($sql);

	$post_data = array();
	while($row = $result->fetch_assoc())
	 {
	 	$post_data['slno'] = $row['slno'];
	 	$post_data['title'] = $row['title'];
	 	$post_data['description'] = substr($row['description'], 0,150);
	 	

	 	if($row['image'] =='')
	 	{
	 	$post_data['image'] = $base_url.'assets/images/gallery.png';
	 	}
	 	else
	 	{
	 		$post_data['image'] = $image_url.$row['image'];
	 	}
	 	$post_data['author'] = $row['author'];
	 	$post_data['date'] = $row['post_date'];
	 	$post_data['time_ago'] = time_elapsed($row['post_date']);

	 	$post_data['limit'] = $end;

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
			   return $data ? implode(', ', $data) . ' atrás' : 'sgora';
		}


echo json_encode($response,JSON_UNESCAPED_SLASHES);

?>