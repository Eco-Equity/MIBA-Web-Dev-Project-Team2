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
$street_no = $_POST['street_no'];
$address_other = $_POST['address_other'];
$zipcode = $_POST['zipcode'];
$phone = $_POST['phone'];
$street_no = $_POST['street_no'];
$city = $_POST['city'];
$country = $_POST['country'];

// change bday from dd-mm-yyyy to yyyy-mm-dd
$bday = date("Y-m-d", strtotime($bday));

// Add user to the database
$query = "INSERT INTO customers (firstname, lastname, username, gender, phone_number, street, street_number, compl_adr_info, city, zip_code, mail, DOB, password, nationality) 
VALUES ('$first_name', '$last_name', '$username', '$gender', '$phone', '$street', '$street_no', '$address_other', '$city', '$zipcode', '$email', '$bday', '$psw', '$nationality')";

$result = mysqli_query($conn, $query);

if(!$result){
    // Query failed, redirect to error page
    header('Location: query_error.html');
    exit();
}

// User created successfully
header('Location: registration_confirmation.html');
?>
