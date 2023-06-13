<?php

// Call to th database connection
include('db.php');

// Getting the data from the form (login.html)
$_SESSION['username'] = $_POST['username'];
$_SESSION['pass'] = $_POST['pass'];
$username = $_SESSION['username'];
$pass = $_SESSION['pass'];

// Query to the database
$query = "SELECT iduser, username, password, admin FROM users WHERE username = '$username' AND password = '$pass'";

$result = mysqli_query($conn, $query);

// If the query returns a row, the user is logged in
if($result  == false){
    header('Location: query_error.html');
}

if(mysqli_num_rows($result) == 0){
    header('Location: error_login.html');
} else {
    $row = mysqli_fetch_row($result);
    $_SESSION['iduser'] = $row[0];
    $_SESSION['admin'] = $row[3];

    // jump to welcome page
    header('Location: welcome.html');
}

?>