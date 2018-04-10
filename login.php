<?php
require ("config.php");
$connection = pg_connect ("host=$DB_HOST dbname=$DB_DATABASE user=$DB_USER password=$DB_PASSWORD");
//check connection
if (!$connection){
    echo "connection error\n";
    exit;
}

//get all the POST variables
$age = $_POST['age'];
$gender = $_POST['gender'];
$pictureString = $_POST['pictures'];
$ip = $_SERVER['REMOTE_ADDR'];

$attr_1 = $_POST['attr_1'];
$attr_2 = $_POST['attr_2'];
$attr_3 = $_POST['attr_3'];
$comp_1 = $_POST['comp_1'];
$comp_2 = $_POST['comp_2'];
$comp_3 = $_POST['comp_3'];
$soci_1 = $_POST['soci_1'];
$soci_2 = $_POST['soci_2'];
$soci_3 = $_POST['soci_3'];
$trus_1 = $_POST['trus_1'];
$trus_2 = $_POST['trus_2'];
$trus_3 = $_POST['trus_3'];

$newEntry = "INSERT INTO tmp.SURVEY 
          (participant_id, gender, age, photoString, attr_1, comp_1, 
          soci_1, trus_1, attr_2, comp_2, soci_2, trus_2, attr_3,
           comp_3, soci_3, trus_3) VALUES ('$ip', '$gender','$age', '$pictureString','$attr_1', '$comp_1',
           '$soci_1', '$trus_1', '$attr_2', '$comp_2','$soci_2', '$trus_2', '$attr_3', '$comp_3','$soci_3', '$trus_3');";

$entryResult = pg_query($newEntry);

if (!$entryResult) {
    echo "An error occurred when inserting.\n";
    exit;
}
header('location: success.html');
?>

