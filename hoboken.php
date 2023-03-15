<!DOCTYPE html>
<html>
<head>
<title>Hoboken</title>
</head>
<body>
	<h1>Extended Forecast for Hoboken NJ</h1>

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
			if ($row['set_homepage'] == 'hoboken.php'){
				echo "<h2>";
				echo "This is your favorite city!";
				echo "</h2>";
			}
		}
	?>

	<h3>
		<?php
		echo date("Y/m/d");
		?>
	</h3>

	<form method ="post" action="router.php">
   	<label for="cities">Choose a city for a detailed forecast:</label>
   	<select id="cities" name="cities">
   		<option value="hoboken">Hoboken</option>
   		<option value="newark">Newark</option>
   		<option value="freehold">Freehold</option>
   		<option value="leonia">Leonia</option>
   		<option value="wildwood">Wildwood</option>
   	</select>
   	<input type="submit" value="Get Extended Forecast">
   </form>

   <form method="post" action="hoboken.php">
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

		$ip_insert = "INSERT INTO Personalization (ip, set_homepage) VALUES ('$ip', 'hoboken.php')";
		$ip_update = "UPDATE Personalization SET set_homepage='hoboken.php' WHERE ip='$ip'";
		$ip_get = "SELECT ip, set_homepage FROM Hoboken WHERE ip='$ip'";
 
		if ($mysqli->query($ip_insert) === TRUE){
			echo "New record created successfully";
		}
		elseif ($mysqli->query($ip_insert) === FALSE) {
			$result = $mysqli->query("SELECT ip, set_homepage FROM Personalization WHERE ip='$ip'");
			foreach ($result as $row) {
				if ($row['set_homepage'] == 'hoboken.php'){
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
   <a href="landing.php">Overview</a>
   <br>
   <br>

	<?php
	$servername = "localhost";
	$username = "miknad";
	$password = "MajorHalen2022";
	$dbname = "forecasts";

	$mysqli = new mysqli($servername, $username, $password, $dbname);
	$mysqli->select_db("forecasts");

	$result = $mysqli->query("SELECT periods, temps, short_desc, long_desc FROM Hoboken");
	foreach ($result as $row) {
		$long = $row['long_desc'];
		$no_colon = substr($long, strpos($long, ':')+1);
		echo nl2br($row['periods'] . ": " . "\r\n" . " - " . $row['temps'] . "\r\n" . " - " . $row['short_desc'] . "\r\n" . $no_colon . "\r\n");
		echo nl2br("\r\n");
	}
	mysqli_close($mysqli);
	?>

</body>
</html>
