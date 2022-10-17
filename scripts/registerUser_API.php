<?php
if($_POST)
{
	require_once 'db_config.php';

	$fullname = $_POST['fullname'];
	$email = $_POST['emailaddress'];
	$password = $_POST['password'];
	$username = str_replace(' ', '', $fullname);
	$sql = "SELECT email FROM users_tbl WHERE email='$email'";
	$resultset = mysqli_query($db, $sql) or die("database error:". mysqli_error($db));
	$row = mysqli_fetch_assoc($resultset);		
	if(!$row['email']){	
		$sql = "INSERT INTO users_tbl(`fullname`, `username`, `password`, `email`,`active`) VALUES ('$fullname', '$username', '$password', '$email', 1)";
		mysqli_query($db, $sql) or die("database error:". mysqli_error($db)."qqq".$sql);			
		echo true;
	} else {				
		echo false;	 
	}

}
?>