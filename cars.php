<?php

 ob_start();

 session_start();

 require_once 'dbconnect.php';



 // if session is not set this will redirect to login page

 if( !isset($_SESSION['user']) ) {

  header("Location: index.php");

  exit;

 }

 // select logged-in users detail

 $res=mysqli_query($conn, "SELECT * FROM users WHERE userId=".$_SESSION['user']);

 $userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);

?>

<!DOCTYPE html>

<html>

<head>

<title>Welcome - <?php echo $userRow['userName']; ?></title>

</head>

<body>



             <?php echo $userRow['userName']; ?> Is logged in
<h1>Welcome to our Cars page!</h1>
<p>Here you can see all cars and their current locations </p>

            <a href="logout.php?logout">Sign Out</a>

<?php $carlist = "SELECT car_name, longitude, latitude
FROM CARS ";
$carresults = mysqli_query($conns, $carlist);
?>
<ul>
  <?php while ($carresults = mysqli_fetch_assoc($carresults)){
	                			if ($carresults["car_model"] == $car_name['car_model'] ) {  ?>
      <li><?php echo ucwords ($carresults["office_name"]); ?></li>
	                		<?php }}; ?>
</ul>




</body>

</html>

<?php ob_end_flush(); ?>
