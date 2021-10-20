<html>

<head>
<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
      }

    tr:nth-child(even) {
        background-color: #dddddd;
      }
</style>
 <!-- Mobile Specific Meta -->
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="colorlib">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>BitSafe</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">				
        <link rel="stylesheet" href="css/nice-select.css">							
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">				
        <link rel="stylesheet" href="css/main.css">
   

</head>
<body>
<header id="header">
        <div class="container main-menu">
            <div class="row align-items-center justify-content-between d-flex">
              <div id="logo">
                <a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
              </div>
              <nav id="nav-menu-container">
                <ul class="nav-menu">
                  <li><a href="index2.html">Home</a></li>
                  <li><a href="deposite.php">Transfer</a></li>
                  <li><a href="view_customer.php">View Customer</a></li>                                                                              
                  <li><a href="index.html">Log Out</a></li>
                </ul>
              </nav><!-- #nav-menu-container -->	
              <?php
              $servername = "localhost";
              $username = "root";
              $password = "";
              $dbname = "bank_system";

              // Create connection
              $conn = new mysqli($servername, $username, $password, $dbname);
              // Check connection
              if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
              }
              $sql = "SELECT * FROM user";
              $result = $conn->query($sql);

              if ($result->num_rows > 0) {
                echo "<table><tr><th>Name</th> <th>Email ID</th> <th>Account No</th> <th>Balance</th></tr>";
                  // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["username"]."</td><td>".$row["email"]."</td><td> ".$row["accountno"]."</td><td> ".$row["Amount"]."</td></tr>";
                  }
                echo "</table>";
              }
              else {
                echo "0 results";
              }$conn->close();
 ?>
	    		
            </div>
        </div>
      </header><!-- #header -->
      
</body>
</html>