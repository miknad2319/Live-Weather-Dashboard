<!DOCTYPE html>
<html>
<head>
<title>Overview</title>
</head>
<body>
	<h1>
		<?php
		echo date("Y/m/d");
		?>
	</h1>

	<?php
		$ip = $_SERVER['REMOTE_ADDR'];
      $servername = "localhost";
		$username = "miknad";
		$password = "MajorHalen2022";
		$dbname = "forecasts";
		$mysqli = new mysqli($servername, $username, $password, $dbname);
		$mysqli->select_db("forecasts");
		$result = $mysqli->query("SELECT ip, set_homepage FROM Personalization WHERE ip='$ip'");

		foreach ($result as $row) {
			if ($row['set_homepage'] == 'landing.php'){
				echo "<h2>";
				echo "You can't choose a city, huh? I know, they're all so great :)";
				echo "</h2>";
			}
		}
	?>

	<h3>Weather at a glance</h3>


	<?php
	$servername = "localhost";
	$username = "miknad";
	$password = "MajorHalen2022";
	$dbname = "forecasts";

	$mysqli = new mysqli($servername, $username, $password, $dbname);
	$mysqli->select_db("forecasts");
	$result = $mysqli->query("SELECT periods, temps, short_desc FROM Newark WHERE id=0");
	foreach ($result as $row) {
		echo nl2br("Newark " . $row['periods'] . ": " . "\r\n" . " - " . $row['temps'] . "\r\n" . " - " . $row['short_desc'] . "\r\n");
	}
	
	echo nl2br("\r\n");

	$result = $mysqli->query("SELECT periods, temps, short_desc FROM Freehold WHERE id=0");
	foreach ($result as $row) {
		echo nl2br("Freehold " . $row['periods'] . ": " . "\r\n" . " - " . $row['temps'] . "\r\n" . " - " . $row['short_desc'] . "\r\n");
	}

	echo nl2br("\r\n");

	$result = $mysqli->query("SELECT periods, temps, short_desc FROM Wildwood WHERE id=0");
	foreach ($result as $row) {
		echo nl2br("Wildwood " . $row['periods'] . ": " . "\r\n" . " - " . $row['temps'] . "\r\n" . " - " . $row['short_desc'] . "\r\n");
	}

 	echo nl2br("\r\n");

	$result = $mysqli->query("SELECT periods, temps, short_desc FROM Leonia WHERE id=0");
	foreach ($result as $row) {
		echo nl2br("Leonia " . $row['periods'] . ": " . "\r\n" . " - " . $row['temps'] . "\r\n" . " - " . $row['short_desc'] . "\r\n");
	}  

	echo nl2br("\r\n");

	$result = $mysqli->query("SELECT periods, temps, short_desc FROM Hoboken WHERE id=0");
	foreach ($result as $row) {
		echo nl2br("Hoboken " . $row['periods'] . ": " . "\r\n" . " - " . $row['temps'] . "\r\n" . " - " . $row['short_desc'] . "\r\n");
	}
    mysqli_close($mysqli);
    ?>
    <br>

    <form method ="post" action="router.php">
   	<label for="cities">Choose a city for a detailed forecast:</label>
   	<select id="cities" name="cities">
   		<option value="newark">Newark</option>
   		<option value="freehold">Freehold</option>
   		<option value="leonia">Leonia</option>
   		<option value="hoboken">Hoboken</option>
   		<option value="wildwood">Wildwood</option>
   	</select>
   	<input type="submit" value="Get Extended Forecast">
   </form>

  <br>

  <form method="post" action="landing.php">
    <input type="submit" name="cities" value="Set This Page as Favorite!">
    </form>	

<?php
	if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['cities']))
    {
        $ip = $_SERVER['REMOTE_ADDR'];
        $servername = "localhost";
		$username = "miknad";
		$password = "MajorHalen2022";
		$dbname = "forecasts";


		$mysqli = new mysqli($servername, $username, $password, $dbname);
		$mysqli->select_db("forecasts");

		$ip_insert = "INSERT INTO Personalization (ip, set_homepage) VALUES ('$ip', 'landing.php')";
		$ip_update = "UPDATE Personalization SET set_homepage='landing.php' WHERE ip='$ip'";

		if ($mysqli->query($ip_insert) === TRUE){
			echo "New record created successfully";
		}
		elseif ($mysqli->query($ip_insert) === FALSE) {
			$result = $mysqli->query("SELECT ip, set_homepage FROM Personalization WHERE ip='$ip'");
			foreach ($result as $row) {
				if ($row['set_homepage'] == 'landing.php'){
					echo "This is already your favorite!";
				}
				else {
					$mysqli->query($ip_update);
					echo "Favorite updated";
				}
				
			}
		}
		mysqli_commit($mysqli);
		mysqli_close($mysqli);
	}
?>	
	<br>


</body>
</html> 
