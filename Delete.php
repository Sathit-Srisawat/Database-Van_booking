<?php

//include 'dbconfig.php';
$json = file_get_contents('php://input');
$message = '';
$obj = json_decode($json,true);
$connection = new mysqli('localhost', 'root', '', 'van_booking');

if ($connection->connect_error)
{
 die("Connection failed: " . $connection->connect_error);
} 
$queues = $obj['queue'];
$status = $obj['status'];

$query = "DELETE FROM ticket WHERE time = '$queues'";
$Uquery = "UPDATE Countdown SET logic = '$status'";

$query_result = $connection->query($query);
$query_results = $connection->query($Uquery);

if ($query_result === true)
{
 $message = 'Success!';
}

else
{
 $message = 'Error! Try Again.';
}

echo json_encode($message);

$connection->close();

?>
