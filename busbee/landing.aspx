<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="landing.aspx.cs" Inherits="busbee.landing" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Busbee - Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" >
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>






<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center">

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between"> 
          <img style="width:15%;" src="assets/img/busbeelogo.png" alt=""> 

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="#hero">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="#contact">Contact</a></li>
          <li><a href="login.aspx">Login</a></li>
        </ul>
      </nav>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header>
  <!-- End Header -->











    <form id="form1" runat="server">

    <!-- ======= Hero Section ======= -->
      <section id="hero" class="hero">
        <div class="container position-relative">
          <div class="row gy-5" data-aos="fade-in">
            <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center text-center text-lg-start">
              <h2>Welcome to <span>busbee</span></h2>
                <p>Hop on and bee in control!</p>
                <p>Bringing the control of bus schedule times to you.</p>
              <div class="d-flex justify-content-center justify-content-lg-start">
                <a class="btn-get-started"> <asp:Button ID="btnUserSignUp" runat="server" Text="Sign Up" BackColor="#1A9082" BorderStyle="None" ForeColor="White" Height="39px" Width="132px" OnClick="btnUserSignUp_Click" /> </a>
              </div>
            </div>
            <div class="col-lg-6 order-1 order-lg-2" style="text-align:center">
              <img src="assets/img/bus.png" style="width:70%;" alt="" data-aos="zoom-out" data-aos-delay="100">
            </div>
          </div>
        </div>
      </section>
    <!-- End Hero Section -->




  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>About Us</h2>
          <p>We are a team of developers bringing the ease of bus travel to the people. 
             We recognized a way for people to buy bus tickets and track their bus whereabouts without having to go to the bus station or waiting long hours.</p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-6">
            <img src="assets/img/bus-1.jpg" class="img-fluid rounded-4 mb-4" alt="">
            <p>Our mission is to promote accessible, reliable and quick bus services to allow bus commmuters to travel with ease and Metro Bus to better manage its operations. </p>
            </div>
          <div class="col-lg-6">
            <div class="content ps-0 ps-lg-5">
              <p class="fst-italic">
                Our Core Values:
              </p>
              <ul>
                <li><i class="bi bi-check-circle-fill"></i> Honesty </li>
                <li><i class="bi bi-check-circle-fill"></i> Accountability </li>
                <li><i class="bi bi-check-circle-fill"></i> People-focused </li>
              </ul>
              <p>
                We aim to be a people-centered, perfomance-driven providers of an efficient transport service 
                within integrated public transport networks.
              </p>

              <div class="position-relative mt-4">
                <video width="320" height="240" controls> 
                    <source src="assets/MetroBus-video.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>

              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->








    <!-- ======= Stats Counter Section ======= -->
    <section id="stats-counter" class="stats-counter">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4 align-items-center">

          <div class="col-lg-6">
            <img src="assets/img/stats-img.svg" alt="" class="img-fluid">
          </div>

          <div class="col-lg-6">

            <div class="stats-item d-flex align-items-center">
              <span data-purecounter-start="0" data-purecounter-end="80" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>percent</strong> of South Africa’s population is totally dependent on public transport.</p>
            </div><!-- End Stats Item -->

            <div class="stats-item d-flex align-items-center">
              <span data-purecounter-start="0" data-purecounter-end="90000" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong></strong> passengers are transported daily by Metro Bus.</p>
            </div><!-- End Stats Item -->

            <div class="stats-item d-flex align-items-center">
              <span data-purecounter-start="0" data-purecounter-end="2" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Second largest</strong> municipal bus operator in South Africa is Metro Bus.</p>
            </div><!-- End Stats Item -->

          </div>

        </div>

      </div>
    </section><!-- End Stats Counter Section -->












    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-header">
          <h2>Services</h2>
        </div>

      </div>
      <!-- End Service Item -->

        <div class="row gy-4">

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-easel"></i>
              </div>
              <h3>Bus Tracking</h3>
              <p>know the location of your bus.</p>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-bounding-box-circles"></i>
              </div>
              <h3>Online Ticket Purchase</h3>
              <p>Buy bus tickets from anywhere using any smart device.</p>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-calendar4-week"></i>
              </div>
              <h3>Receive Notifications</h3>
              <p>Receive notifications notifying you how far your bus is from your bus-stop.</p>
            </div>
          </div><!-- End Service Item -->

        </div>

    </section>
    <!-- End Our Services Section -->










    <!-- ======= Our Team Section ======= -->
    <section id="team" class="team">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Our Team</h2>
          <p>Meet our team of talented and creative developers who developed the system.</p>
        </div>

        <div class="row gy-4">

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <img src="assets/img/team/1.jpg" class="img-fluid" alt="">
              <h4>Kerin Moodley</h4>
              <span>Project Manager and Full Stack Developer</span>
              <div class="social">
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <img src="assets/img/team/2.jpg" class="img-fluid" alt="">
              <h4>Chantal Mashele</h4>
              <span>Database Administrator</span>
              <div class="social">
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="300">
            <div class="member">
              <img src="assets/img/team/3.jpg" class="img-fluid" alt="">
              <h4>Kimberley Isaac</h4>
              <span>Front-end Developer</span>
              <div class="social">
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <img src="assets/img/team/4.jpg" class="img-fluid" alt="">
              <h4>Bajana Ilunga</h4>
              <span>Front-end Developer</span>
              <div class="social">
              </div>
            </div>
          </div><!-- End Team Member -->

        <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <img src="assets/img/team/5.jpg" class="img-fluid" alt="">
              <h4>Kelebogile Nethengwe</h4>
              <span>Full-Stack Developer</span>
              <div class="social">
              </div>
            </div>
          </div><!-- End Team Member -->

        <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <img src="assets/img/team/6.jpg" class="img-fluid" alt="">
              <h4>Nikiwe Mbhiza</h4>
              <span>Researcher and Front-end Developer</span>
              <div class="social">
              </div>
            </div>
          </div><!-- End Team Member -->

        <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <img src="assets/img/team/7.jpg" class="img-fluid" alt="">
              <h4>Tshinovheya Ramulongo</h4>
              <span>Database Administrator</span>
              <div class="social">
              </div>
            </div>
          </div><!-- End Team Member -->


        </div>

      </div>
    </section><!-- End Our Team Section -->











    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Contact</h2>
        </div>

        <div class="row gx-lg-0 gy-4">

          <div class="col-lg-4">

            <div class="info-container d-flex flex-column align-items-center justify-content-center">
              <div class="info-item d-flex">
                <i class="bi bi-geo-alt flex-shrink-0"></i>
                <div>
                  <h4>Location:</h4>
                  <p>Transportation House, No 1 Raikes Road, Braamfontein, 2001</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-envelope flex-shrink-0"></i>
                <div>
                  <h4>Email:</h4>
                  <p>Customer.serv@busbee.joburg.org.za</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-phone flex-shrink-0"></i>
                <div>
                  <h4>Call:</h4>
                  <p>011 833 5918</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-clock flex-shrink-0"></i>
                <div>
                 
                  <h4>Open Hours:</h4>
                  <p>Mon-Sat: 11AM - 23PM</p>
                </div>
              </div><!-- End Info Item -->
            </div>

          </div>

          
              <div class="col-lg-8">

              <div class="row">

                  <div class='col-md-6 form-group mt-3 mt-md-0'>
                      <asp:TextBox ID="txtEmail" TextMode="Email" class="form-control" placeholder="Your Email" style="background-color: #e0ebeb; color: #222831; border: none; box-shadow: 2px 2px 5px lightgrey; margin-left: 15px;" runat="server" Height="48px" Width="324px"></asp:TextBox>
                      &nbsp;
                      &nbsp; 
                      <asp:TextBox ID="txtSubject" class="form-control" placeholder="Subject" style="background-color: #e0ebeb; color: #222831; border: none; box-shadow: 2px 2px 5px lightgrey; margin-left: 15px;" runat="server" Height="48px" Width="324px"></asp:TextBox>
                      &nbsp;
                      &nbsp;         
                      <asp:TextBox ID="txtMessage" class="form-control" rows="7" placeholder="Message" style="background-color: #e0ebeb; color: black; border: #222831; box-shadow: 2px 2px 5px lightgrey; margin-left: 15px;" runat="server" Height="167px" Width="678px"></asp:TextBox>
  
                      &nbsp;
                      &nbsp;
                      <asp:Button ID="btnSend" runat="server" style="background-color: #008374; color: white; padding: 15px 25px; border: none; border-radius: 12px; display: block; margin-left: 15px; transition: all 150ms ease-in-out;" onmouseover="this.style.backgroundColor='#0b8457';" onmouseout="this.style.backgroundColor='#008374';" Text="Send" Width="190px" OnClick="btnSend_Click" />
                     
                  </div>

              </div> 

              </div>

          </div>

        </div>

    
    </section>
    <!-- End Contact Section -->

  </main>

    </form>






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

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>



