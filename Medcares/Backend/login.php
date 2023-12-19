

<?php


$email=$_POST['email'];
$password=$_POST['password'];


$con = mysqli_connect('localhost', 'root', '','doctor_patient_management');
if(!$con)
{
	echo 'Connection failed';
}

else{

$stmt=$con->prepare("select * from signuptable where email= ?");
$stmt->bind_param("s",$email);

$stmt->execute();
$stmt_rslt=$stmt->get_result();
if($stmt_rslt->num_rows>0)
{
	$data=$stmt_rslt->fetch_assoc();
	
	 if($data['password']==$password){
		 header("Location: Search_Doctor.html");
	 }
	else{
		echo "Invalid email or password";
	}
	
}
else{
	
	echo "Invalid email or password";
	
}

}

?>
