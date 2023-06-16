<?php
// Call to the database connection
include('db.php');

// Getting the data from the form
$usrname = $_POST['usrname'];
$psw = $_POST['psw'];

// Check for any connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if username is already taken
$query = "SELECT username FROM users WHERE username = '$usrname'";
$result = mysqli_query($conn, $query);

if(mysqli_num_rows($result) > 0){
    // Username is already taken
    echo "taken";
} else {
    // Username is available
    echo "available";
}

?>

