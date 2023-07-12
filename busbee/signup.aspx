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
    
    <!--Signup --->
     <!-- LINEARICONS -->
    <link rel="stylesheet" href="SignUpcss/fonts/linearicons/style.css">

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="SignUpcss/css/style1.css">
    <script>
        function togglePasswordVisibility(inputId, iconId) {
            var passwordInput = document.getElementById(inputId);
            var eyeIcon = document.getElementById(iconId);

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                eyeIcon.classList.remove("lnr-eye");
                eyeIcon.classList.add("lnr-eye-crossed");
            } else {
                passwordInput.type = "password";
                eyeIcon.classList.remove("lnr-eye-crossed");
                eyeIcon.classList.add("lnr-eye");
            }
        }
    </script>
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

    <!-- SIGNUP FORM-->
     <div class="wrapper">
    <div class="inner">
       
      <form action="">
        <h3>SignUp</h3>
        <div class="form-holder">
          <span class="lnr lnr-user"></span>
          <input type="text" class="form-control" placeholder="Firstname">
        </div>
        <div class="form-holder">
          <span class="lnr lnr-user"></span>
          <input type="text" class="form-control" placeholder="Surname">
        </div>
        <div class="form-holder">
          <span class="lnr lnr-user"></span>
          <input type="text" class="form-control" placeholder="Username">
        </div>
        <div class="form-holder">
          <span class="lnr lnr-license"></span>
          <input type="text" class="form-control" placeholder="ID Number">
        </div>
            <div class="form-holder">
          <span class="lnr lnr-license"></span>
          <input type="text" class="form-control" placeholder="Passport Number">
        </div>
        <div class="form-holder">
          <span class="lnr lnr-phone-handset"></span>
          <input type="text" class="form-control" placeholder="Phone Number">
        </div>
        <div class="form-holder">
          <span class="lnr lnr-envelope"></span>
          <input type="text" class="form-control" placeholder="E-Mail">
        </div>
        <div class="form-holder">
          <span class="lnr lnr-lock"></span>
          <input type="password" id="passwordInput" class="form-control" placeholder="Password">
          <span class="lnr lnr-eye" id="passwordEye" style="margin-left: 300px; cursor: pointer;" onclick="togglePasswordVisibility('passwordInput', 'passwordEye')"></span>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-lock"></span>
          <input type="password" id="confirmPasswordInput" class="form-control" placeholder="Confirm Password">
          <span class="lnr lnr-eye" id="confirmPasswordEye" style="margin-left: 300px; cursor: pointer;" onclick="togglePasswordVisibility('confirmPasswordInput', 'confirmPasswordEye')"></span>
        </div>
        <div>
          <center>
             
            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
            <div class="clearfix">
              <button type="button" class="cancelbtn">Cancel</button>
              <button type="submit" class="signupbtn">Sign Up</button>
            </div>
          </center>
        </div>
      </form>
      <img src="SignUpcss/images/BUSSTOP1.png" alt="" class="image-1">
    </div>
  </div>


</body>
</html>
