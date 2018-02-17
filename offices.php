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



             <?php echo $userRow['userName']; ?> Is logged in <br>
<h1>Welcome to our Offices page!</h1>

<?php  $officeResult = mysqli_query($conn, "SELECT * FROM offices");
echo $officeResult; ?>

            <a href="logout.php?logout">Sign Out</a>







</body>

</html>

<?php ob_end_flush(); ?>
