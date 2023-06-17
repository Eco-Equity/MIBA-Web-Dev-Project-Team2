<?php
// Call to the database connection
include('db.php');

// Getting the data from the form (login.html)
$_SESSION['email'] = $_POST['email'];
$_SESSION['pwd'] = $_POST['pwd'];
$email = $_SESSION['email'];
$pwd = $_SESSION['pwd'];

// Query to the database
$query = "SELECT cust_id, mail, password FROM customers WHERE lower(mail) = lower('$email') AND password = '$pwd'";

$result = mysqli_query($conn, $query);

// If the query returns a row, the user is logged in
if(mysqli_num_rows($result) == 1){
    // You're missing this line
    $row = mysqli_fetch_assoc($result);
    
    $cust_id = $row['cust_id'];

    $query = "  SELECT p.name, f.focus, SUM(t.amount) as amount_invested 
                FROM transactions t 
                JOIN products p ON t.prod_id = p.prod_id 
                JOIN focus f ON p.focus_id = f.focus_id 
                WHERE t.cust_id = '$cust_id' 
                GROUP BY p.name, f.focus 
                HAVING SUM(t.amount) > 0;";

    $result = mysqli_query($conn, $query);

    $product_html = "";
    $focus_html = "";
    $amount_html = "";

    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $product_html .= "<div class=\"flex\">" . $row["name"]. "</div>";
            $focus_html .= "<div class=\"flex\">" . $row["focus"]. "</div>";
            $amount_html .= "<div class=\"flex\">" . $row["amount_invested"]. "</div>";
        }
    }

    // You need to pass the data to the dashboard
    $_SESSION['product_html'] = $product_html;
    $_SESSION['focus_html'] = $focus_html;
    $_SESSION['amount_html'] = $amount_html;

    // And also remember to change dashboard.html to dashboard.php
    header('Location: dashboard.php');
    exit;
} else {
    // set a message to display on login page
    $_SESSION['login_error'] = "Invalid email or password.";

    // redirect to login page
    header('Location: login.html');
    exit;
}
?>