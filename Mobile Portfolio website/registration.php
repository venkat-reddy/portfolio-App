<?php
$servername = "pdb3.awardspace.net";
$username = "1966971_venkat";
$password = "Reddys2010@";
$dbname = "1966971_venkat";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
$name = $_POST['name'];
$email = $_POST['email']; 
$phone = $_POST['phone']; 
$message = $_POST['message']; 
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO `mobile-app-portfolio` (`name`, `email`, `phone`, `message`) VALUES ('$name', '$email', '$phone', '$message')";

if (mysqli_query($conn, $sql)) {
    ?>

<script type="text/javascript">




      location.href = 'MessageThankYou.html';

</script>

<?php
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>
