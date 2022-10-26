<?php
if($_POST)
{
	require_once 'db_config.php';
	
	$ui = null;
	if (empty($_POST['userid'])) {
		echo false;
		exit;
	}else{
		$ui = $_POST['userid'];
	}
	
	$ii = null;
	if (empty($_POST['logoid'])) {
		echo false;
		exit;
	}else{
		$ii = $_POST['logoid'];
	}
	
	if($ui && $ii){
		$sql = "INSERT INTO whologos_tbl (`userid`, `logoid`) VALUES ('$ui', '$ii')";

		if(mysqli_query($db, $sql)){
			echo true;
		} else{
			echo false;
		}
	}
 
	// Close connection
	mysqli_close($db);
	
}
?>