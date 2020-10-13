<?php
include 'DBConfig.php';
$json = file_get_contents('php://input');
$message = '';
$obj = json_decode($json,true);
    
$connection = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
    
if ($connection->connect_error)
{
 die("Connection failed: " . $connection->connect_error);
}
    
$status = $obj['status'];
    
$query = "UPDATE Countdown SET logic = '$status'";
 
$query = "UPDATE Countdown SET logic = '$status'";


$query_result = $connection->query($query);

if ($query_result === true)
{
 $message = 'ticket invalid!';
}

echo json_encode($message);

$connection->close();

?>
