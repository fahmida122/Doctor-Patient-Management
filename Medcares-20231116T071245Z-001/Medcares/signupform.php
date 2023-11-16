<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con = mysqli_connect('localhost', 'root', '','doctor_patient_management');
if(!$con)
{
	echo 'Connection failed';
}
// get the post records
$name="";
if(isset($_POST['name']))
    $name=$_POST['name'];



$txtEmail="";
if(isset($_POST['email'])) 
    $txtEmail=$_POST['email'];

$password="";
if(isset($_POST['password'])) 
    $password=$_POST['password'];


// database insert SQL code
$sql = "INSERT INTO `signuptable` (`name`,`email`, `password`) VALUES ( '$name','$txtEmail', '$password')";

// insert in database 
$rs = mysqli_query($con, $sql);


if($rs)
{
	header("Location: Search_Doctor.html");
}
else 
{
	echo "failed to insert ";
}

?>