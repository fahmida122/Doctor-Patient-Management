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



$email="";
if(isset($_POST['email'])) 
    $email=$_POST['email'];

$subject="";
if(isset($_POST['subject'])) 
    $subject=$_POST['subject'];

$question="";
if(isset($_POST['question'])) 
    $question=$_POST['question'];



// database insert SQL code
$sql = "INSERT INTO `ask_question` (`name`,`email`, `subject`,`question`) VALUES ( '$name','$email','$subject','$question')";

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