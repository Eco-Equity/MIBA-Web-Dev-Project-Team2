<?php
// Call to the database connection
include('db.php');

// Getting the data from the form
$usrname = $_POST['usrname'];
$psw = $_POST['psw'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$gender = $_POST['gender'];
$nationality = $_POST['nationality'];
$bday = $_POST['bday'];
$email = $_POST['email'];
$street = $_POST['street'];
$address_other = $_POST['address_other'];
$zipcode = $_POST['zipcode'];
$phone = $_POST['phone'];
$street_no = $_POST['street_no'];
$city = $_POST['city'];
$country = $_POST['country'];
$preferences = $_POST['preferences'];

// Check if username is already taken
$query = "SELECT username FROM users WHERE username = '$usrname'";
$result = mysqli_query($conn, $query);

if(mysqli_num_rows($result) > 0){
    // Username is taken, redirect back to registration page
    header('Location: registration_page.php');
    exit();
}

// Add user to the database
$query = "INSERT INTO users (username, password, first_name, last_name, gender, nationality, dob, email, street, additional_address_info, zipcode, phone, street_no, city, country, preferences) 
VALUES ('$usrname', '$psw', '$first_name', '$last_name', '$gender', '$nationality', '$bday', '$email', '$street', '$address_other', '$zipcode', '$phone', '$street_no', '$city', '$country', '$preferences')";

$result = mysqli_query($conn, $query);

if(!$result){
    // Query failed, redirect to error page
    header('Location: query_error.html');
    exit();
}

// User created successfully
header('Location: welcome.html');
?>
