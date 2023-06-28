<?php 
session_start(); 
$conn = mysqli_connect(  
  'localhost', // Host ---- Host: localhost:3306 (MariaDB)
  'root', 					        // User         
  'root',    				        // Password           
  'test' 					          // Database name            
) or die(mysqli_error($mysqli));
 ?>