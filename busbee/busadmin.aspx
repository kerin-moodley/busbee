<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="busadmin.aspx.cs" Inherits="busbee.busadmin" %>

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
    <!--busadmin-->
    <link href="busadmin.css" rel="stylesheet" />
    <!--style for dropDoown-->
   <style>
       /* Style for the dropdown menu */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Style for the dropdown button */
.dropbtn {
  font-size: 16px;
  border: none;
  cursor: pointer;
}

/* Style for the dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color:#008374;
  min-width: 160px;
  z-index: 1;
}

/* Style for the dropdown links */
.dropdown-content a {
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Show the dropdown content when hovering or clicking on the dropdown button */
.dropdown:hover .dropdown-content,
.dropdown:focus-within .dropdown-content {
  display: block;
}
/*slideshow*/
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 10000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.1s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}


/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.1s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
   </style>
</head>


<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center">

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between"> 
          <img style="width:15%;" src="assets/img/busbeelogo.png" alt=""> 

      <nav id="navbar" class="navbar">
       <ul>
        <li><a href="#hero">Welcome</a></li>
        <li><a href="#about">Profile</a></li>
        <li><a href="#services">Bus4Today</a></li>
        <li><a href="#team">Current Location</a></li>
       <li><a href="#contact">Contact</a></li>
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
              <h2>Welcome back to busbee</h2>
                <p>Great to have you back!</p>
               
              
            </div>
            <div class="col-lg-6 order-1 order-lg-2" style="text-align:center">
              <img src="Images/busoutline.png" style="width:70%;" alt="" data-aos="zoom-out" data-aos-delay="100">
            </div>
          </div>
        </div>
      </section>
    <!-- End Hero Section -->
        <!--Slideshow-->
       <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Images/Maintence.jpg" style="width:100%">
 
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="Images/Route.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="Images/Weather.jpg" style="width:100%">
 
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>


  <main id="main">

 <!-- ======= Profile Section ======= -->
<section id="about" class="about">
  <div class="container" data-aos="fade-up">

    <div class="section-header">
      <h2>Profile</h2>
    </div>
    <div class="container-fluid">
        <div class="card-1">
            <img src="profilecss/BusdriverBe.png" alt="Avatar" class="avatar" id="avatar">
            <p>JPG or PNG no larger than 5 MB</p>
             <label for="fileInput" class="upload-btn">Upload Image</label>
              <input type="file" id="fileInput" accept="image/*" onchange="updateAvatar(this)">
            <div class="form-container">
            
            <div class="form-group">
                <label for="firstname">First Name:</label>
                <input type="text" class="form-control" id="Text9" runat="server" placeholder="John" />
            </div>

            <div class="form-group">
                <label for="lastname">Last Name:</label>
                <input type="text" class="form-control" id="Text10" runat="server" placeholder="Doe" />
            </div>

            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="text" class="form-control" id="Text11" runat="server" placeholder="JohnDoe@gmail.com" />
            </div>

            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" class="form-control" id="Text12" runat="server" placeholder="0123456789" />
            </div>

            <div class="form-group">
                <label for="bday">Birthday:</label>
                <input type="text" class="form-control" id="Text13" runat="server" placeholder="1980/04/23" />
            </div>

            <div class="form-group">
                <label for="companyid">Company ID:</label>
                <input type="text" class="form-control" id="Text14" runat="server" placeholder="A12345" />
            </div>
                <div class="form-group">
                <label for="datejoined">Date Joined:</label>
                <input type="text" class="form-control" id="Text1" runat="server" placeholder="2020/05/21" />
            </div>
                
         
             </div>
        </div>
      </div>
         
     </div>      
</section>



    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-header">
          <h2>Bus for Today</h2>
        </div>

      </div>
    
    </section>
    <!-- End Our Services Section -->
      <div class="container-fluid">
        
        <label>
            <input type="radio" name="street" value="556 Alveda Park to Megawatt Park"> 556 Alveda Park to Megawatt Park
        </label>
        
        <label>
            <input type="radio" name="street" value="521 Naturena to Kramerville"> 521 Naturena to Kramerville
        </label>
        <label>
            <input type="radio" name="street" value="518C Sandton to Forest Hill"> 518C Sandton to Forest Hill
        </label>
<label>
    <input type="radio" name="street" value="421A Auckland Park to Yeoville"> 421A Auckland Park to Yeoville
</label>

<label>
    <input type="radio" name="street" value="413 Gandhi Square to Roodekraans"> 413 Gandhi Square to Roodekraans
</label>

<label>
    <input type="radio" name="street" value="227 Judith's Paarl to Crosby"> 227 Judith's Paarl to Crosby
</label>

<label>
    <input type="radio" name="street" value="85 Westgate to Johannesburg North"> 85 Westgate to Johannesburg North
</label>

<label>
    <input type="radio" name="street" value="80B Westgate to Randburg"> 80B Westgate to Randburg
</label>

<label>
    <input type="radio" name="street" value="63 Fashion District to Newland"> 63 Fashion District to Newland
</label>

<label>
    <input type="radio" name="street" value="42 Elandspark to Braamfontein"> 42 Elandspark to Braamfontein
</label>

<label>
    <input type="radio" name="street" value="553 Protea Glen to Kya Sands"> 553 Protea Glen to Kya Sands
</label>

<label>
    <input type="radio" name="street" value="01 Gandhi Square to Parkhurst"> 01 Gandhi Square to Parkhurst
</label>

<label>
    <input type="radio" name="street" value="03 Westgate to Highlands North"> 03 Westgate to Highlands North
</label>

<label>
    <input type="radio" name="street" value="04 Gandhi Square to Rosebank"> 04 Gandhi Square to Rosebank
</label>

<label>
    <input type="radio" name="street" value="05 Stock exchange to Birnam"> 05 Stock exchange to Birnam
</label>
<label>
    <input type="radio" name="street" value="05C Gandhi Square to Sandton"> 05C Gandhi Square to Sandton
</label>

<label>
    <input type="radio" name="street" value="05D Gandhi Square to Sunninghill"> 05D Gandhi Square to Sunninghill
</label>

<label>
    <input type="radio" name="street" value="07D Gandhi Square to Centurion"> 07D Gandhi Square to Centurion
</label>

<label>
    <input type="radio" name="street" value="08 Stock Exchange to Barlopark"> 08 Stock Exchange to Barlopark
</label>

<label>
    <input type="radio" name="street" value="09 Gandhi Square to Linbro Park"> 09 Gandhi Square to Linbro Park
</label>

<label>
    <input type="radio" name="street" value="10 Stock Exchange to Melrose Arch"> 10 Stock Exchange to Melrose Arch
</label>

<label>
    <input type="radio" name="street" value="12 Gandhi Square to Lonehill"> 12 Gandhi Square to Lonehill
</label>

<label>
    <input type="radio" name="street" value="13B Gandhi Square to Lyndhurst"> 13B Gandhi Square to Lyndhurst
</label>

<label>
    <input type="radio" name="street" value="06 Gandhi Square to Leeuwkop prison via Woodmead, Sunninghill, and Petervale"> 06 Gandhi Square to Leeuwkop prison via Woodmead, Sunninghill, and Petervale
</label>

<label>
    <input type="radio" name="street" value="15B Gandhi Square to Lombardy"> 15B Gandhi Square to Lombardy
</label>

<label>
    <input type="radio" name="street" value="15F Gandhi Square to Longmeadow"> 15F Gandhi Square to Longmeadow
</label>

<label>
    <input type="radio" name="street" value="18 Forest hill to Johannesburg Hospital"> 18 Forest hill to Johannesburg Hospital
</label>

<label>
    <input type="radio" name="street" value="32 Braamfontein to Eastgate Mall"> 32 Braamfontein to Eastgate Mall
</label>

<label>
    <input type="radio" name="street" value="33 Westgate to Bedford Gardens"> 33 Westgate to Bedford Gardens
</label>

<label>
    <input type="radio" name="street" value="34 Stock Exchange to Malvern"> 34 Stock Exchange to Malvern
</label>

<label>
    <input type="radio" name="street" value="46 Rossetenville to Jhb Hospital"> 46 Rossetenville to Jhb Hospital
</label>
<label>
    <input type="radio" name="street" value="47 Gandhi Square to Townsview"> 47 Gandhi Square to Townsview
</label>

<label>
    <input type="radio" name="street" value="48 Gandhi Square to Towerby"> 48 Gandhi Square to Towerby
</label>

<label>
    <input type="radio" name="street" value="52B Fashion district to Winchester hills"> 52B Fashion district to Winchester hills
</label>

<label>
    <input type="radio" name="street" value="54 Sanlam to The Glen"> 54 Sanlam to The Glen
</label>

<label>
    <input type="radio" name="street" value="55B Gandhi Square to Evans Park"> 55B Gandhi Square to Evans Park
</label>

<label>
    <input type="radio" name="street" value="56 Mayfield Park to Braamfontein"> 56 Mayfield Park to Braamfontein
</label>

<label>
    <input type="radio" name="street" value="59 Gandhi Square to Crown Extension"> 59 Gandhi Square to Crown Extension
</label>

<label>
    <input type="radio" name="street" value="62 Claremont to Fashion District"> 62 Claremont to Fashion District
</label>

<label>
    <input type="radio" name="street" value="71A Gandhi Square to Fairlands"> 71A Gandhi Square to Fairlands
</label>

<label>
    <input type="radio" name="street" value="74 Westgate to Blaigowrie"> 74 Westgate to Blaigowrie
</label>

<label>
    <input type="radio" name="street" value="79 Gandhi Square to Parkhurst"> 79 Gandhi Square to Parkhurst
</label>

<label>
    <input type="radio" name="street" value="80A Gandhi Square to Beverley Gardens"> 80A Gandhi Square to Beverley Gardens
</label>

<label>
    <input type="radio" name="street" value="80D Gandhi Square to Dainfern"> 80D Gandhi Square to Dainfern
</label>

<label>
    <input type="radio" name="street" value="82 Gandhi Square to Ferndale"> 82 Gandhi Square to Ferndale
</label>

<label>
    <input type="radio" name="street" value="83 Westgate to Malanshof"> 83 Westgate to Malanshof
</label>

<label>
    <input type="radio" name="street" value="83C Westgate to Randpark Ridge"> 83C Westgate to Randpark Ridge
</label>

<label>
    <input type="radio" name="street" value="86 Gandhi Square to Kya Sands"> 86 Gandhi Square to Kya Sands
</label>

<label>
    <input type="radio" name="street" value="89 Gandhi to Northgate"> 89 Gandhi to Northgate
</label>

<label>
    <input type="radio" name="street" value="260 Paarlshoop to Eastgate"> 260 Paarlshoop to Eastgate
</label>

<label>
    <input type="radio" name="street" value="262 Hillbrow to Kempton Park"> 262 Hillbrow to Kempton Park
</label>

<label>
    <input type="radio" name="street" value="412 Gandhi Square to Witpoortjie"> 412 Gandhi Square to Witpoortjie
</label>

<label>
    <input type="radio" name="street" value="414 Gandhi Square to Lindhaven"> 414 Gandhi Square to Lindhaven
</label>

<label>
    <input type="radio" name="street" value="415 Gandhi Square to Strubens Valley"> 415 Gandhi Square to Strubens Valley
</label>

<label>
    <input type="radio" name="street" value="417 Gandhi Square to Davidsonville via Fleurhof"> 417 Gandhi Square to Davidsonville via Fleurhof
</label>
<label>
    <input type="radio" name="street" value="421D Belleveue East to Sunninghill"> 421D Belleveue East to Sunninghill
</label>

<label>
    <input type="radio" name="street" value="430 Westgate Mall to Sunninghill"> 430 Westgate Mall to Sunninghill
</label>

<label>
    <input type="radio" name="street" value="520 Naturena to Randburg"> 520 Naturena to Randburg
</label>

<label>
    <input type="radio" name="street" value="45 Marist Brothers to Braamfontein"> 45 Marist Brothers to Braamfontein
</label>

<label>
    <input type="radio" name="street" value="44 South Hills to Braamfontein"> 44 South Hills to Braamfontein
</label>

<label>
    <input type="radio" name="street" value="57 Naturena to Braamfontein"> 57 Naturena to Braamfontein
</label>

<label>
    <input type="radio" name="street" value="59 Gandhi Sqaure to Crown extension"> 59 Gandhi Sqaure to Crown extension
</label>

<label>
    <input type="radio" name="street" value="67 Gandhi Square to Melville"> 67 Gandhi Square to Melville
</label>

<label>
    <input type="radio" name="street" value="63 Newlands to Fashion District"> 63 Newlands to Fashion District
</label>

<label>
    <input type="radio" name="street" value="91 Kliptown to Heriotdale"> 91 Kliptown to Heriotdale
</label>

<label>
    <input type="radio" name="street" value="92 Kliptown to Robertsham"> 92 Kliptown to Robertsham
</label>

<label>
    <input type="radio" name="street" value="93 Longtill to New Centre"> 93 Longtill to New Centre
</label>

<label>
    <input type="radio" name="street" value="313 Gandhi Square to Lyndhurst"> 313 Gandhi Square to Lyndhurst
</label>

<label>
    <input type="radio" name="street" value="420 Westgate Mall to Randburg"> 420 Westgate Mall to Randburg
</label>

<label>
    <input type="radio" name="street" value="522 Naturena to Randburg"> 522 Naturena to Randburg
</label>

<label>
    <input type="radio" name="street" value="523 Naturena to Fourways Mall"> 523 Naturena to Fourways Mall
</label>

<label>
    <input type="radio" name="street" value="546E Rosettenville to Leewkop Prison"> 546E Rosettenville to Leewkop Prison
</label>

<label>
    <input type="radio" name="street" value="547C Townsview to Santon"> 547C Townsview to Santon
</label>

<label>
    <input type="radio" name="street" value="550 Princess to Jabulani Mall"> 550 Princess to Jabulani Mall
</label>

<label>
    <input type="radio" name="street" value="562 Southgate Mall to ORT Freight Terminal"> 562 Southgate Mall to ORT Freight Terminal
</label>
          <br />
          <br />
          <br />
          <br />
           <p4>Which location are you driving today? <span id="selectedLocation"></span></p4>
          <br />
          <br />
    </div>
       
       









    <!-- ======= Location Section ======= -->
    <section id="team" class="team">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Current Location </h2>
          <p>Current location will be shared to the passenger.</p>
            <p>Remember to Stop Update at the end of the workday.</p>
        </div>
          <asp:Button ID="locationButton" runat="server" Text="Allow to detect location" BackColor="#1A9082" BorderStyle="None" ForeColor="White" Height="39px" Width="250px" />
<label id="locationLabel" class="common-label"></label>

<asp:Button ID="stopAutoUpdate" runat="server" Text="Stop Automatic Update" BackColor="#1A9082" BorderStyle="None" ForeColor="White" Height="39px" Width="250px" />

          <ul id="locationHistory"></ul>      

      
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
    <!--Slideshow-->
 <script>
     let slideIndex = 1;
     showSlides(slideIndex);

     function plusSlides(n) {
         showSlides(slideIndex += n);
     }

     function currentSlide(n) {
         showSlides(slideIndex = n);
     }

     function showSlides(n) {
         let i;
         let slides = document.getElementsByClassName("mySlides");
         let dots = document.getElementsByClassName("dot");
         if (n > slides.length) { slideIndex = 1 }
         if (n < 1) { slideIndex = slides.length }
         for (i = 0; i < slides.length; i++) {
             slides[i].style.display = "none";
         }
         for (i = 0; i < dots.length; i++) {
             dots[i].className = dots[i].className.replace(" active", "");
         }
         slides[slideIndex - 1].style.display = "block";
         dots[slideIndex - 1].className += " active";
     }

     // Automatic slideshow
     let intervalId;

     function startSlideShow() {
         intervalId = setInterval(function () {
             plusSlides(1); // Auto-advance to the next slide
         }, 2000); // Change slide every 3 seconds (adjust as needed)
     }

     // Start the automatic slideshow when the page loads
     window.addEventListener("load", startSlideShow);

     // Pause the automatic slideshow when clicking previous or next buttons
     document.querySelector(".prev").addEventListener("click", function () {
         clearInterval(intervalId);
         startSlideShow(); // Restart after clicking
     });
     document.querySelector(".next").addEventListener("click", function () {
         clearInterval(intervalId);
         startSlideShow(); // Restart after clicking
     });
 </script>

    <!--Script for dropdown-->
     <script>
         document.addEventListener("click", function (e) {
             const busDriver = document.getElementById("busDriver");
             if (!busDriver.contains(e.target)) {
                 const dropdownContent = busDriver.querySelector(".dropdown-content");
                 dropdownContent.style.display = "none";
             }
         });
     </script>
    <!--AVATAR-->
    <script>
        function updateAvatar(input) {
            const avatar = document.getElementById("avatar");
            const file = input.files[0];

            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    avatar.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        }
    </script>
    <!--RADIO-->
    <script>
        const radioButtons = document.querySelectorAll('input[type="radio"]');
        const selectedLocation = document.getElementById('selectedLocation');

        // Add an event listener to each radio button
        radioButtons.forEach((radio) => {
            radio.addEventListener('change', () => {
                // Update the selected location text when a radio button is selected
                selectedLocation.textContent = radio.value;
            });
        });
    </script>

 <script src="script.js"></script>
</body>

</html>




