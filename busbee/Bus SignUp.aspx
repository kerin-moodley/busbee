<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bus SignUp.aspx.cs" Inherits="busbee.Bus_SignUp" %>


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
    
    <!--Signup --->
     <!-- LINEARICONS -->
    <link rel="stylesheet" href="signupcss/fonts/linearicons/style.css">

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="signupcss/css/style.css">
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
       
      <form id="frmSignUp" runat="server">
        <h3>SignUp</h3>
        <div class="form-holder">
          <span class="lnr lnr-user"></span>
          <asp:TextBox ID="txtFirstName" class="form-control" placeholder="Firstname" runat="server"></asp:TextBox>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-user"></span>
          <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-user"></span>
          <asp:TextBox ID="txtUsername" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-license"></span>
          <asp:TextBox ID="txtIDNum" class="form-control" placeholder="ID Number/Passport Number" runat="server"></asp:TextBox>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-phone-handset"></span>
          <asp:TextBox ID="txtPhoneNumber" class="form-control" placeholder="Phone Number" runat="server" TextMode="Phone"></asp:TextBox>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-envelope"></span>
          <asp:TextBox ID="txtEmail" class="form-control" placeholder="E-Mail" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-lock"></span>
          <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-holder">
          <span class="lnr lnr-lock"></span>
          <asp:TextBox ID="txtConfirmPassword" class="form-control" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
          <center>
            <br />
            <div class="clearfix">
              <asp:Button ID="btnSignUp" class="signupbtn" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" BackColor="#339966" BorderStyle="None" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="41px" Width="137px" />
            </div>
          </center>
        </div>
      </form>
      <img src="signupcss/images/BUSSTOP1.png" alt="" class="image-2">
    </div>
  </div>

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-4">
        <div class="col-lg-5 col-md-12 footer-info">
          <a href="index.html" class="logo d-flex align-items-center">
            <span>Impact</span>
          </a>
          <p>In pursuit of the Service Delivery Agreement and the strategic guidepost set by the City, Metrobus vision is To be a people centered,performance driven provider of an efficient conventional bus service within the Integrated Public Transport Network, which will be achieved through our</p>
      
          &copy; Copyright <strong><span>BusBee</span></strong>. All Rights Reserved
        
        </div>

        <div class="col-lg-2 col-6 footer-links">
        </div>

        <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
          <h4>Contact Us</h4>
          <p>
            Transportation House, <br>
            No 1 Raikes Road,<br>
            Braamfontein, 2001 <br><br>
            <strong>Phone:</strong> 011 833 5918<br>
            <strong>Email:</strong> Customer.serv@busbee.joburg.org.za<br>
          </p>

        </div>

      </div>
    </div>

  </footer>
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


</body>
</html>
