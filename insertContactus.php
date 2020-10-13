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
    
$name = $obj['names'];
$email = $obj['emails'];
$message = $obj['messages'];
    
$query = "insert into contactus(name,email,message) values('$name','$email','$message')";

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
