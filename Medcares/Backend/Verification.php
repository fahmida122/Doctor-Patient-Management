<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con = mysqli_connect('localhost', 'root', '','doctor_patient_management');
if(!$con)
{
	echo 'Connection failed';
}
// get the post records

if(isset($_POST["submit"])){
	

$name="";
if(isset($_POST['name']))
    $name=$_POST['name'];



$Id="";
if(isset($_POST['Id'])) 
    $Id=$_POST['Id'];

$Specialization="";
if(isset($_POST['Specialization'])) 
    $Specialization=$_POST['Specialization'];

$files=$_FILES['file'];

$filename=$files['name'];

$fileerror=$files['error'];

$filetmp=$files['tmp_name'];

$fileext=explode('.',$filename);
$filecheck=strtolower(end($fileext));
$fileextstored=array('png','jpg','jpeg');
if(in_array($filecheck,$fileextstored))
{
	
	$destination='image/'.$filename;
	
	move_uploaded_file($filetmp,$destination);
	
	$sql = "INSERT INTO `verification` (`Name`,`Id`, `Specialization`,`image`) VALUES ( '$name','$Id', '$Specialization','$destination')";
$rs = mysqli_query($con, $sql);


if($rs)
{
	header("Location: Search_Patient.html");
}
else 
{
	echo "failed to insert ";
}
	
}


	
}




// insert in database 


?>