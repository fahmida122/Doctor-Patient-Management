<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con = mysqli_connect('localhost', 'root', '','doctor_patient_management');
if(!$con)
{
	echo 'Connection failed';
}
// get the post records
$email="";
if(isset($_POST['email']))
    $email=$_POST['email'];



$password="";
if(isset($_POST['password'])) 
    $password=$_POST['password'];



// database insert SQL code
$sql = "Update `signuptable` SET password='$password' where email='$email' ";
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