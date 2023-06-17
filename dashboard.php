<?php 
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Eco Equity - Invest in Sustainability</title>
    <link rel="stylesheet" href="css/utilities.css" />
    <link rel="stylesheet" href="css/dashboard.css" />
  </head>

  <body>
    <!-- Header -->
    <div class="header">
      <div class="container grid">
        <a href="index.html"><h1 class="logo flex">Eco Equity</h1></a>
        <div class="searchbar">
          <input type="text" name="searchbar" id="search" placeholder="Search for projects here" />
        </div>
        <div class="header-buttons flex">
          <a href="index.html" class="btn">Portfolio</a>
          <a href="index.html" class="btn">Catalogue</a>
          <a href="index.html" class="btn">Settings</a>
          <a href="index.html" class="btn">Log out</a>
        </div>
      </div>
    </div>

    <!-- User Dashboard -->
    <section id="dashboard">
      <div class="dashboard container grid">
        <div class="portfolio">
          <div class="desc">
            <h1>Portfolio</h1>
            <h1 style="color: green;">14.000€</h1>
            </p>
          </div>
          <canvas id="myChart"></canvas>
        </div>
        <div class="assets">
          <div class="assets-header flex">
            <h1>Assets</h1>
          </div>
          <div class="asset-items grid">

            <!-- Results rendered using PHP -->
            <div class="product">
              <?php echo $_SESSION['product_html']; ?>
            </div>

            <div class="focus">
              <?php echo $_SESSION['focus_html']; ?>
            </div>

            <div class="amount">
              <?php echo $_SESSION['amount_html']; ?>
            </div>
            
          </div>
        </div>
        </div>
      </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="js/dashboard.js"></script>
  </body>
</html>
