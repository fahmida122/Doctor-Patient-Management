<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con = mysqli_connect('localhost', 'root', '','doctor_patient_management');
if(!$con)
{
	echo 'Connection failed';
}
// get the post records
$Patient_Id="";
if(isset($_POST['Patient_Id']))
    $Patient_Id=$_POST['Patient_Id'];

$Patient_Name="";
if(isset($_POST['Patient_Name']))
    $Patient_Name=$_POST['Patient_Name'];

$Doctor_Id="";
if(isset($_POST['Doctor_Id']))
    $Doctor_Id=$_POST['Doctor_Id'];

$Doctor_Name="";
if(isset($_POST['Doctor_Name']))
    $Doctor_Name=$_POST['Doctor_Name'];


$Appointment_Date="";
if(isset($_POST['Appointment_Date'])) 
    $Appointment_Date=$_POST['Appointment_Date'];

$Appointment_Time="";
if(isset($_POST['Appointment_Time'])) 
    $Appointment_Time=$_POST['Appointment_Time'];



// database insert SQL code
$sql = "INSERT INTO `appointment` (`Patient_Id`,`Patient_Name`, `Doctor_Id`,`Doctor_Name`,`Appointment_Date`,`Appointment_Time`) VALUES ( '$Patient_Id','$Patient_Name','$Doctor_Id','$Doctor_Name','$Appointment_Date','$Appointment_Time')";

// insert in database 
$rs = mysqli_query($con, $sql);


if($rs)
{
	header("Location: index.html");
}
else 
{
	echo "failed to insert ";
}

?>