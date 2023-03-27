<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "exercises";



$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }


 $sql = "INSERT INTO food (Name, Description, Price)
VALUES ('pizza', '200gram kalbas', '500toman')";

$sql = "DELETE FROM food WHERE id=2";

$sql = "SELECT Name, Description, Price FROM food";
$result = $conn->query($sql);

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }


 $conn -> close();

?>