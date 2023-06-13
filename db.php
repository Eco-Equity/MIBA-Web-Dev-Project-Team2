<?php 

session_start(); // Start the session to resume sessions and access session vars

$conn = mysqli_connect(  // connect to the database
  'localhost',           // host (machine) where the database is located. 
                         // In our case it is the machine where the php pages are located.
  'root',                // user with permission to access the database
  'root',                // password of this user
  'test'                // database name
) or die(mysqli_error($mysqli));  
                         // End of program if conex not successfull and output
                         // the error message

 ?>