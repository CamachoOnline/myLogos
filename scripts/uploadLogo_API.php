<?php
// Include the database configuration file
include 'db_config.php';
$statusMsg = '';

// File upload path
$targetDir = "../images/logos/";
$fileName = basename($_FILES["file"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);

if(!empty($_FILES["file"]["name"])){
    // Allow certain file formats
    $allowTypes = array('jpg','png','jpeg','gif','pdf');
    if(in_array($fileType, $allowTypes)){
        // Upload file to server
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){
            // Insert image file name into database
            $insert = $db->query("INSERT into logos_tbl (file) VALUES ('".$fileName."')");
            if($insert){
                $statusMsg = true;
            }else{
                $statusMsg = false;
            } 
        }else{
            $statusMsg = false;
        }
    }else{
        $statusMsg = false;
    }
}

// Display status message
echo $statusMsg;
?>