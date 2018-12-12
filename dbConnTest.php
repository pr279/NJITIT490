#!/usr/bin/php
<?php
$mydb =  mysqli_connect('127.0.0.1','root','password','spoonacular');

if ($mydb->errno != 0){

	echo "Failed to connect to database: ".$mydb->error.PHP_EOL;
	exit(0);
}

echo "<br><br>Successfully connected to database".PHP_EOL;


$query = mysqli_query($mydb,"SELECT * FROM users");

while ($row = mysqli_fetch_assoc($query)){
	echo $row['id'];
	echo "\n";
	echo $row['username'];
	echo"\n";
	echo $row['password'];
	echo "\n\n";
}



?>
