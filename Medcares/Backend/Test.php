<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Info</title>
    <link rel="stylesheet" href="Test.css">
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
 




$sql = "SELECT * FROM test";

if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
		echo "<p>Test Information</p>";
        echo "<table border=2>";
            echo "<tr>";
              //  echo "<th>name</th>";
                // echo "<th>email</th>";
                echo "<td>Test Id</th>";
                echo "<td>Test Name</th>";
				echo "<td>Test Description </td>";
               
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
               // echo "<td>" . $row['name'] . "</td>";
               // echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['test_id'] . "</td>";
                echo "<td>" . $row['test_name'] . "</td>";
				echo "<td>" . $row['test_info'] . "</td>";
               
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