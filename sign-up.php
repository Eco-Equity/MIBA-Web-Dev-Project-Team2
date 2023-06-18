<?php
// Call to the database connection
include('db.php');

// Getting the data from the form
$username = $_POST['username'];
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

// Add user to the database
$query = "INSERT INTO users (username, password, first_name, last_name, gender, nationality, dob, email, street, additional_address_info, zipcode, phone, street_no, city, country, preferences) 
VALUES ('$username', '$psw', '$first_name', '$last_name', '$gender', '$nationality', '$bday', '$email', '$street', '$address_other', '$zipcode', '$phone', '$street_no', '$city', '$country', '$preferences')";

$result = mysqli_query($conn, $query);

if(!$result){
    // Query failed, redirect to error page
    header('Location: query_error.html');
    exit();
}

// User created successfully
header('Location: welcome.html');
?>
