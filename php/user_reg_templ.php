<?php

// Call to th database connection
include('db.php');

// Getting the data from the form (new_user.html)
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$username = $_POST['username'];
$pass = $_POST['pass'];

// Check if the new user should be an administrator
if(empty($_POST['administrator'])){
    $admin = 0;
}else{
    $admin = 1;
}

// Try getting the user from the database
$query = "select username, admin from users where username = '$username'";
$result = mysqli_query($conn, $query);

// if user exists as admin
if(mysqli_fetch_row($result) == 1){
    // jump to login
    header('Location: login.html');
}

else{
    # Else: Add user and jump to login (id does not need to be defined because 
    # it is a primary key with AUTO_INCREMENT)
    $row=mysqli_fetch_row($result);

    $query = "INSERT INTO users (username, password, firstname, lastname, admin) 
    VALUES ('$username', '$pass', '$firstname', '$lastname', '0')";
    
    $result = mysqli_query($conn, $query);
    
    # if the query doesn't work, jump to error page
    if(!$result){
        // jump to error page
        header('Location: query_error.html');
    }
    
    // fetch the id of the new user
    $_SESSION['iduser'] = $conn->insert_id;
    $_SESSION['admin'] = $admin;

    header('Location: welcome.html');
}
?>