<?php 
    $host_name = "localhost";
    $username = "root";
    $password = "";
    $database_name = "pagination";

    $conn = mysqli_connect($host_name, $username, $password, $database_name);

    if ($conn) {
        
    } else {
        echo "Connection Failed";
    }
?>
