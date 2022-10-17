<?php
if($_POST)
{
	require_once 'db_config.php';

	$error = array();
	$resp = array();

	if (empty($_POST['username'])) {
		$error[] = "Username is required";
	}
	
	if (empty($_POST['password'])) {
		$error[] = "Password is required";
	}


	if (count($error) > 0) {
		$resp['msg'] = $error;
		$resp['status'] = false;
		echo json_encode($resp);
		exit;
	}

	$sql ="SELECT * FROM users_tbl WHERE username = '".$_POST['username']."' AND password = '".$_POST['password']."' AND active='1'";
	$result = mysqli_query($db, $sql);
	$user = mysqli_fetch_assoc($result);
	if ($user) {
		session_start();
		$_SESSION['user_id'] = $user['id'];
		echo true;
		exit;
	} else {
		$error[] = "Email does not match";
		echo false;
		exit;
	}
}
?>