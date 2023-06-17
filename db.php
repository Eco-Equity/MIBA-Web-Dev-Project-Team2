<?php 
session_start(); 
$conn = mysqli_connect(  
  'localhost:3306', // Host ---- Host: localhost:3306 (MariaDB)
  'admin_m2', 					      // User          
  'esade2023',    				    // Password           
  'admin_m2' 					        // Database name            
) or die(mysqli_error($mysqli));
 ?>