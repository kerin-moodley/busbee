<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="busbee.Login" %>

<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Busbee - Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Impact
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>


      <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center">

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between"> 
          <img style="width:15%;" src="assets/img/busbeelogo.png" alt=""> 

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="landing.aspx">Back to Home</a></li>
          <li><a href="login.aspx">Login</a></li>
        </ul>
      </nav><!-- .navbar -->

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->
  <!-- End Header -->





    <form id="form1" runat="server">
   
      <div>
        <center>
            <h1>Sign Up</h1>
        </center>
    </div>

        <div>
            <center>
                <label for="Name"><b>Firstname</b></label>
                <input id="User_Name" type="text" placeholder="Enter Name" />
            </center>
        </div>
        <div>
            <center>
                <label for="Surname"><b>Surname</b></label>
                <input id="User_Surname" type="text" placeholder="Enter Surname" />
            </center>
        </div>
        <div>
            <center>
                <label for="User_Username"><b>Username</b></label>
                <input id="User_Username" type="text" placeholder="Enter Username" />
            </center>
        </div>
        <div>
            <center>
                <label for="ID"><b>ID Number</b></label>
                <input id="User_IDNum" type="text" placeholder="Enter ID Number" />
            </center>
        </div>
        <div>
            <center>
                <label for="Pass"><b>Password</b></label>
                <input id="Password1" type="password" placeholder="Password" name="psw-repeat" required />
            </center>
        </div>
        <div>
            <center>
                <label for="Pass-repeat"><b>Repeat Password</b></label>
                <input id="Password2" type="password" placeholder="Repeat Password" name="psw-repeat" required />
            </center>
        </div>
        <div>
            <center>
                <label>
                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                </label>
            </center>
        </div>
        <div>
            <center>
                <div>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</div>

                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn">Sign Up</button>
                </div>
            </center>
        </div>
    </form>







</body>
</html>
