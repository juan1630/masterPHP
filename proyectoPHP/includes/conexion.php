<?php 


// CONEXION A LA DB


$server = 'localhost';
$username = "jose";
$password = 'eltodasmias16';
$database = 'blogmaster';

$db = mysqli_connect($server, $username, $password, $database);



mysqli_query($db, "SET NAMES 'utf-8'");

session_start();



?>