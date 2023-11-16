<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profile</title>
    <link rel="stylesheet" href="show.css">
</head>
<body >
    <section class="hero">
      <!-- -------Navbar------- -->
      <nav id="navbar" class="sticky">
        <a href="index.html" class="nav-logo"></a>
        <div class="nav-links" id="navLinks">
            <i class="fa fa-times" onclick="hideMenu()"></i>
            <ul id="menu">
                
            </ul>
        </div>
        <i class="fa fa-bars" onclick="showMenu()"></i>
    </nav>
  <?php




$link = mysqli_connect("localhost", "root", "", "doctor_patient_management");
   
    
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 



$Id="";
if(isset($_POST['Patient_Id'])) 
    $Id=$_POST['Patient_Id'];






$sql = "SELECT patient_info.Id, patient_info.Patient_Name,patient_info.Disease_Id, disease_info.disease_name,disease_info.disease_type,disease_info.disease_description,disease_info.disease_cause,disease_info.disease_advise FROM patient_info, disease_info where patient_info.Disease_Id=disease_info.disease_id and patient_info.Id='$Id' ";



if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
		
		echo "<p>Disease's Information</p>";
		echo "<br>";
        echo "<table border=2>";
            echo "<tr>";
              //  echo "<th>name</th>";
                // echo "<th>email</th>";
                echo "<td>Patient Id</th>";
                echo "<td>Patient Name</th>";
				echo "<td>Disease Id</td>";
                echo "<td>Disease Name</td>";
				echo "<td>Disease Type</td>";
                echo "<td>Disease Description</td>";
                echo "<td>Disease Cause</td>";
				echo "<td>Disease Advise</td>";
                
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
               // echo "<td>" . $row['name'] . "</td>";
               // echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['Id'] . "</td>";
                echo "<td>" . $row['Patient_Name'] . "</td>";
				echo "<td>" . $row['Disease_Id'] . "</td>";
                echo "<td>" . $row['disease_name'] . "</td>";
                  echo "<td>" . $row['disease_type'] . "</td>";
				  echo "<td>" . $row['disease_description'] . "</td>";
                echo "<td>" . $row['disease_cause'] . "</td>";
                  echo "<td>" . $row['disease_advise'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } 
}

$sql = "SELECT patient_info.Id, patient_info.Patient_Name,patient_info.Disease_Id,patient_info.Doctor_Id, doctor_info.Name,doctor_info.Specialization,doctor_info.Address FROM patient_info, doctor_info where patient_info.Doctor_Id=doctor_info.Id and patient_info.Id='$Id' ";



if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
		
		echo "<p>Doctor's Information</p>";
		echo "<br>";
        echo "<table border=2>";
            echo "<tr>";
              //  echo "<th>name</th>";
                // echo "<th>email</th>";
                echo "<td>Patient Id</th>";
                echo "<td>Patient Name</th>";
				echo "<td>Disease Id</td>";
                echo "<td>Doctor Id</td>";
				echo "<td>Doctor Name</td>";
                echo "<td>Doctor Specialization</td>";
                echo "<td>Doctor Address </td>";
				
                
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
               // echo "<td>" . $row['name'] . "</td>";
               // echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['Id'] . "</td>";
                echo "<td>" . $row['Patient_Name'] . "</td>";
				echo "<td>" . $row['Disease_Id'] . "</td>";
                echo "<td>" . $row['Doctor_Id'] . "</td>";
                  echo "<td>" . $row['Name'] . "</td>";
				  echo "<td>" . $row['Specialization'] . "</td>";
                echo "<td>" . $row['Address'] . "</td>";
                 
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } 
}

$sql = "SELECT patient_info.Id, patient_info.Patient_Name,patient_info.Disease_Id,patient_info.Test_Id,  test.test_name, test.test_info FROM patient_info, test where patient_info.Test_Id=test.test_id and patient_info.Id='$Id' ";



if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
		
		echo "<p>Test's Information</p>";
		echo "<br>";
        echo "<table border=2>";
            echo "<tr>";
              //  echo "<th>name</th>";
                // echo "<th>email</th>";
                echo "<td>Patient Id</th>";
                echo "<td>Patient Name</th>";
				echo "<td>Disease Id</td>";
                echo "<td>Test Id</td>";
				echo "<td>Test Name</td>";
                echo "<td>Test Information</td>";
                
				
              echo "</tr>";
       
	   while($row = mysqli_fetch_array($result)){
            echo "<tr>";
               // echo "<td>" . $row['name'] . "</td>";
               // echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['Id'] . "</td>";
                echo "<td>" . $row['Patient_Name'] . "</td>";
				echo "<td>" . $row['Disease_Id'] . "</td>";
                echo "<td>" . $row['Test_Id'] . "</td>";
                  echo "<td>" . $row['test_name'] . "</td>";
				  echo "<td>" . $row['test_info'] . "</td>";
                
                 
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } 
}


$sql = "SELECT patient_info.Id, patient_info.Patient_Name,patient_info.Disease_Id,patient_info.Medicine_Id,  treatment.medicine_name, treatment.medicine_description,treatment.medicine_dose FROM patient_info, treatment where patient_info.Medicine_Id=treatment.medicine_id and patient_info.Id='$Id' ";



if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
		
		echo "<p>Medicine's Information</p>";
		echo "<br>";
        echo "<table border=2>";
            echo "<tr>";
              //  echo "<th>name</th>";
                // echo "<th>email</th>";
                echo "<td>Patient Id</th>";
                echo "<td>Patient Name</th>";
				echo "<td>Disease Id</td>";
                echo "<td>Medicine Id</td>";
				echo "<td>Medicine Name</td>";
                echo "<td>Medicine Description</td>";
                echo "<td>Medicine Dose</td>";
                
				
              echo "</tr>";
       
 while($row = mysqli_fetch_array($result)){
            echo "<tr>";
               // echo "<td>" . $row['name'] . "</td>";
               // echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['Id'] . "</td>";
                echo "<td>" . $row['Patient_Name'] . "</td>";
				echo "<td>" . $row['Disease_Id'] . "</td>";
                echo "<td>" . $row['Medicine_Id'] . "</td>";
                  echo "<td>" . $row['medicine_name'] . "</td>";
				  echo "<td>" . $row['medicine_description'] . "</td>";
                echo "<td>" . $row['medicine_dose'] . "</td>";
                 
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } 
}





mysqli_close($link);
?>
	
	
	
	
	
</section>	
	

</body>
</html>