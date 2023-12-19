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



$Id="";
if(isset($_POST['Id'])) 
    $Id=$_POST['Id'];

$Specialization="";
if(isset($_POST['Specialization'])) 
    $Specialization=$_POST['Specialization'];


// database insert SQL code
$sql = "INSERT INTO `Doctor_Info` (`Name`,`Id`, `Specialization`) VALUES ( '$name','$Id', '$Specialization')";

// insert in database 
$rs = mysqli_query($con, $sql);


if($rs)
{
	header("Location: Search_Patient.html");
}
else 
{
	echo "failed to insert ";
}

?>