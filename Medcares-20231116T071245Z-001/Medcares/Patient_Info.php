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
if(isset($_POST['Name']))
    $name=$_POST['Name'];



$Id="";
if(isset($_POST['Id'])) 
    $Id=$_POST['Id'];

$Disease_Id="";
if(isset($_POST['Disease_Id'])) 
    $Disease_Id=$_POST['Disease_Id'];

$Doctor_Id="";
if(isset($_POST['Doctor_Id'])) 
    $Doctor_Id=$_POST['Doctor_Id'];

$Test_Id="";
if(isset($_POST['Test_Id'])) 
   $Test_Id=$_POST['Test_Id'];


$Medicine_Id="";
if(isset($_POST['Medicine_Id'])) 
    $Medicine_Id=$_POST['Medicine_Id'];

// database insert SQL code
$sql = "INSERT INTO `Patient_Info` (`Patient_Name`,`Id`, `Disease_Id`,`Doctor_Id`,`Test_Id`,`Medicine_Id`) VALUES ( '$name','$Id','$Disease_Id','$Doctor_Id','$Test_Id','$Medicine_Id')";

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