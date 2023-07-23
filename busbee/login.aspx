﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="busbee.SignIn" %>

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
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">	
	<link rel="stylesheet" href="css/style.css">

</head>


	<body class="img js-fullheight" style="background-image: url(images/bg.jpg);">


		      <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center">

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between"> 
          <img style="width:15%;" src="assets/img/busbeelogo.png" alt=""> 

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="landing.aspx">Back to Home</a></li>
          <li><a href="signup.aspx">Sign Up</a></li>
        </ul>
      </nav><!-- .navbar -->

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->
  <!-- End Header -->







	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Login</h3>


		      	<form id="frmLogin" runat="server" class="signin-form">

		      	<div class="form-group">
					<asp:TextBox ID="txtUsername" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
		      	</div>
					 
				<div class="form-group">
					<p> </p>
					<p> </p>
				</div>

	            <div class="form-group">
					<asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
	            </div>

				<div class="form-group">
					<p> </p>
					<p> </p>
				</div>

	            <div class="form-group">
					<asp:Button ID="btnSignIn" runat="server" Text="Sign In" class="form-control submit px-3" style="background-color:#31b099" OnClick="btnSignIn_Click" />
	            </div>

				<div class="form-group">
					<p> </p>
					<p> </p>
				</div>

	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Remember Me
							<input type="checkbox" checked>
							<span class="checkmark"></span>
		            	</label>
	            	</div>
					
					<div class="w-50 text-md-right">
						<a href="#" style="color: #fff">Forgot Password</a>
					</div>
	            </div>

	          </form>
		      </div>
				</div>
			</div>
		</div>
	</section>


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



  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

