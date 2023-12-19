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
 

$Specialization="";
if(isset($_POST['Specialization'])) 
    $Specialization=$_POST['Specialization'];

$Address="";
if(isset($_POST['Address'])) 
    $Address=$_POST['Address'];






$sql = "SELECT * FROM doctor_info where Specialization='$Specialization' AND Address='$Address'";



if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
		
		echo "<p>Doctor's Information</p>";
		echo "<br>";
        echo "<table border=2>";
            echo "<tr>";
              //  echo "<th>name</th>";
                // echo "<th>email</th>";
                echo "<td>Id</th>";
                echo "<td>Name</th>";
				echo "<td>Specialization </td>";
                echo "<td>Address</td>";
				
                
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
               // echo "<td>" . $row['name'] . "</td>";
               // echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['Id'] . "</td>";
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

mysqli_close($link);
?>
	
	
	
	
	
</section>	
	

</body>
</html>