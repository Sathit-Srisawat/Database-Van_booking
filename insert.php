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
    
$time = $obj['times'];
$date = $obj['dates'];

$Hquery = "insert into History(Htime,Hdate) values('$time','$date')";
$query = "insert into ticket(time,date) values('$time','$date')";
    
$query_result = $connection->query($Hquery);
$query_result = $connection->query($query);
    
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
