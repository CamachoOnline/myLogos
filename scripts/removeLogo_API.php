<?php
if($_POST)
{
	require_once 'db_config.php';
	
	if (empty($_POST['userid'])) {
		echo false;
		exit;
	}
	
	if (empty($_POST['logoid'])) {
		echo false;
		exit;
	}
	
	$sql = "DELETE FROM whologos_tbl WHERE userid = ".$_POST['userid']." AND logoid = ".$_POST['logoid'];
	
	if(mysqli_query($db, $sql)){
    	echo true;
	} else{
		echo false;
	}
 
	// Close connection
	mysqli_close($db);
	
}
?>