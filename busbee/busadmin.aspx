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
  transition: 0.5s ease;
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
        <section id="slideshow" class="slideshow">
              <div class="container" data-aos="fade-up">
       <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Images/Maintence.jpg" style="width:100%"/>
 
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="Images/Route.jpg" style="width:100%"/>
  
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="Images/Weather.jpg" style="width:100%"/>
 
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

      </div>  

</section>

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
  
<p>Please type the number of the route you are going to drive today!</p>

<!--Make sure the form has the autocomplete function switched off:-->
<form autocomplete="off" action="/action_page.php">
  <div class="autocomplete" style="width:300px;">
    <input id="myInput" type="text" name="myCountry" placeholder="Bus Route">
  </div>

</form>

<!-- Display selected route and confirm button -->
<div id="selected-route">
  <p>Which bus route are you doing today?</p>
  <p id="selected-route-text"></p>

</div>
      <div id="button-container">
      <p>View all the routes</p>
       <button id="route-button" type="button" >Show Routes</button>
    <div id="routes-container">
       <div class="route-column">
    <ul>
        <li>556 Alveda Park to Megawatt Park</li>
        <li>521 Naturena to Kramerville</li>
        <li>518C Sandton to Forest Hill</li>
        <li>421A Auckland Park to Yeoville</li>
        <li>413 Gandhi Square to Roodekraans</li>
        <li>227 Judith's Paarl to Crosby</li>
        <li>85 Westgate to Johannesburg North</li>
        <li>80B Westgate to Randburg</li>
        <li>63 Fashion District to Newland</li>
        <li>42 Elandspark to Braamfontein</li>
        <li>553 Protea Glen to Kya Sands</li>
        <li>01 Gandhi Square to Parkhurst</li>
    </ul>
</div>
<div class="route-column">
    <ul>
        <li>03 Westgate to Highlands North</li>
        <li>04 Gandhi Square to Rosebank</li>
        <li>05 Stock exchange to Birnam</li>
        <li>05C Gandhi Square to Sandton</li>
        <li>05D Gandhi Square to Sunninghill</li>
        <li>07D Gandhi Square to Centurion</li>
        <li>08 Stock Exchange to Barlopark</li>
        <li>09 Gandhi Square to Linbro Park</li>
         <li>10 Stock Exchange to Melrose Arch</li>
        <li>12 Gandhi Square to Lonehill</li>
         <li>13B Gandhi Square to Lyndhurst</li>
        <li>06 Gandhi Square to Leeuwkop prison via Woodmead, Sunninghill, and Petervale</li>
    </ul>
</div>
<div class="route-column">
    <ul>
        <li>15B Gandhi Square to Lombardy</li>
        <li>15F Gandhi Square to Longmeadow</li>
        <li>18 Forest hill to Johannesburg Hospital</li>
        <li>32 Braamfontein to Eastgate Mall</li>
        <li>33 Westgate to Bedford Gardens</li>
        <li>34 Stock Exchange to Malvern</li>
         <li>46 Rossetenville to Jhb Hospital</li>
        <li>47 Gandhi Square to Townsview</li>
         <li>48 Gandhi Square to Towerby</li>
        <li>52B Fashion district to Winchester hills</li>
        <li>54 Sanlam to The Glen</li>
        <li>55B Gandhi Square to Evans Park</li>
          <li>56 Mayfield Park to Braamfontein</li>
    </ul>
</div>
<div class="route-column">
    <ul>
        <li>56 Mayfield Park to Braamfontein</li>
        <li>59 Gandhi Square to Crown Extension</li>
        <li>62 Claremont to Fashion District</li>
        <li>71A Gandhi Square to Fairlands</li>
        <li>74 Westgate to Blaigowrie</li>
        <li>79 Gandhi Square to Parkhurst</li>
        <li>80A Gandhi Square to Beverley Gardens</li>
        <li>80D Gandhi Square to Dainfern</li>
        <li>82 Gandhi Square to Ferndale</li>
        <li>83 Westgate to Malanshof</li>
        <li>83C Westgate to Randpark Ridge</li>
        <li>86 Gandhi Square to Kya Sands</li>
         <li>89 Gandhi to Northgate</li>
        <li>260 Paarlshoop to Eastgate</li>
    </ul>
</div>
</div>
    </div>
      

      


    <!-- ======= Location Section ======= -->
    <section id="team" class="team">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Current Location </h2>
          <p>Current location will be shared to the passenger.</p>
            <p>Remember to Stop Update at the end of the workday.</p>
        </div>
          <asp:Button ID="locationButton" type="button" runat="server" Text="Allow to detect location" BackColor="#1A9082" BorderStyle="None" ForeColor="White" Height="39px" Width="250px" />
<label id="locationLabel" class="common-label"></label>

<asp:Button ID="stopAutoUpdate" runat="server" Text="Stop Automatic Update" BackColor="#1A9082" BorderStyle="None" ForeColor="White" Height="39px" Width="250px" />

          <ul id="locationHistory"></ul>      

         <script src="script.js"></script>

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

    <script>
        const button = document.getElementById("locationButton");
        const label = document.getElementById("locationLabel");
        const stopAutoUpdateButton = document.getElementById("stopAutoUpdate");
        const locationHistory = document.getElementById("locationHistory"); // New element to display location history
        let intervalId;

        button.addEventListener("click", () => {
            if (navigator.geolocation) {
                button.disabled = true;
                label.textContent = "Detecting your location...";
                navigator.geolocation.getCurrentPosition(onSuccess, onError);
            } else {
                label.textContent = "Your browser does not support geolocation";
            }
        });

        function onSuccess(position) {
            let { latitude, longitude } = position.coords;

            fetch(`https://api.opencagedata.com/geocode/v1/json?q=${latitude}+${longitude}&key=3f8d83eeff5d44bd89dd4fe7ed45386e`)
                .then(response => response.json())
                .then(response => {
                    let allDetails = response.results[0].components;
                    console.table(allDetails);
                    let { city, suburb, road, country } = allDetails;
                    label.textContent = `${road}, ${suburb}, ${city}, ${country}`;

                    // Create a new list item to display the location
                    const locationInfo = `${road}, ${suburb}, ${city}, ${country}`;
                    const locationItem = document.createElement("li");
                    locationItem.textContent = locationInfo;

                    // Append the location item to the history list
                    locationHistory.appendChild(locationItem);
                })
                .catch(() => {
                    label.textContent = "Something went wrong";
                })
                .finally(() => {
                    button.disabled = false;
                });
        }

        function onError(error) {
            if (error.code == 1) {
                label.textContent = "You denied the request";
            } else if (error.code == 2) {
                label.textContent = "Location is unavailable";
            } else {
                label.textContent = "Something went wrong";
            }
            button.disabled = true;
        }

        intervalId = setInterval(() => {
            button.click();
        }, 30000);

        stopAutoUpdateButton.addEventListener("click", () => {
            clearInterval(intervalId);
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
    <!--Routes-->
    <script>
        function autocomplete(inp, arr) {
            /*the autocomplete function takes two arguments,
            the text field element and an array of possible autocompleted values:*/
            var currentFocus;
            var selectedRouteText = document.getElementById("selected-route-text");
            var confirmButton = document.getElementById("confirm-button");

            /*execute a function when someone writes in the text field:*/
            inp.addEventListener("input", function (e) {
                var a, b, i, val = this.value;
                /*close any already open lists of autocompleted values*/
                closeAllLists();
                if (!val) { return false; }
                currentFocus = -1;
                /*create a DIV element that will contain the items (values):*/
                a = document.createElement("DIV");
                a.setAttribute("id", this.id + "autocomplete-list");
                a.setAttribute("class", "autocomplete-items");
                /*append the DIV element as a child of the autocomplete container:*/
                this.parentNode.appendChild(a);
                /*for each item in the array...*/
                for (i = 0; i < arr.length; i++) {
                    /*check if the item starts with the same letters as the text field value:*/
                    if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                        /*create a DIV element for each matching element:*/
                        b = document.createElement("DIV");
                        /*make the matching letters bold:*/
                        b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                        b.innerHTML += arr[i].substr(val.length);
                        /*insert a input field that will hold the current array item's value:*/
                        b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                        /*execute a function when someone clicks on the item value (DIV element):*/
                        b.addEventListener("click", function (e) {
                            /*insert the value for the autocomplete text field:*/
                            inp.value = this.getElementsByTagName("input")[0].value;
                            /*update the selected route text:*/
                            selectedRouteText.textContent = "Selected route: " + inp.value;
                            /*enable the confirm button:*/
                            confirmButton.disabled = false;
                            /*close the list of autocompleted values,
                            (or any other open lists of autocompleted values:*/
                            closeAllLists();
                        });
                        a.appendChild(b);
                    }
                }
            });
            /*execute a function presses a key on the keyboard:*/
            inp.addEventListener("keydown", function (e) {
                var x = document.getElementById(this.id + "autocomplete-list");
                if (x) x = x.getElementsByTagName("div");
                if (e.keyCode == 40) {
                    /*If the arrow DOWN key is pressed,
                    increase the currentFocus variable:*/
                    currentFocus++;
                    /*and and make the current item more visible:*/
                    addActive(x);
                } else if (e.keyCode == 38) { //up
                    /*If the arrow UP key is pressed,
                    decrease the currentFocus variable:*/
                    currentFocus--;
                    /*and and make the current item more visible:*/
                    addActive(x);
                } else if (e.keyCode == 13) {
                    /*If the ENTER key is pressed, prevent the form from being submitted,*/
                    e.preventDefault();
                    if (currentFocus > -1) {
                        /*and simulate a click on the "active" item:*/
                        if (x) x[currentFocus].click();
                    }
                }
            });
            function addActive(x) {
                /*a function to classify an item as "active":*/
                if (!x) return false;
                /*start by removing the "active" class on all items:*/
                removeActive(x);
                if (currentFocus >= x.length) currentFocus = 0;
                if (currentFocus < 0) currentFocus = (x.length - 1);
                /*add class "autocomplete-active":*/
                x[currentFocus].classList.add("autocomplete-active");
            }
            function removeActive(x) {
                /*a function to remove the "active" class from all autocomplete items:*/
                for (var i = 0; i < x.length; i++) {
                    x[i].classList.remove("autocomplete-active");
                }
            }
            function closeAllLists(elmnt) {
                /*close all autocomplete lists in the document,
                except the one passed as an argument:*/
                var x = document.getElementsByClassName("autocomplete-items");
                for (var i = 0; i < x.length; i++) {
                    if (elmnt != x[i] && elmnt != inp) {
                        x[i].parentNode.removeChild(x[i]);
                    }
                }
            }
            /*execute a function when someone clicks in the document:*/
            document.addEventListener("click", function (e) {
                closeAllLists(e.target);
            });
        }

        /* An array containing bus routes: */
        var busRoutes = [
            "556 Alveda Park to Megawatt Park",
            "521 Naturena to Kramerville",
            "518C Sandton to Forest Hill",
            "421A Auckland Park to Yeoville",
            "413 Gandhi Square to Roodekraans",
            "227 Judith's Paarl to Crosby",
            "85 Westgate to Johannesburg North",
            "80B Westgate to Randburg",
            "63 Fashion District to Newland",
            "42 Elandspark to Braamfontein",
            "553 Protea Glen to Kya Sands",
            "01 Gandhi Square to Parkhurst",
            "03 Westgate to Highlands North",
            "04 Gandhi Square to Rosebank",
            "05 Stock Exchange to Birnam",
            "05C Gandhi Square to Sandton",
            "05D Gandhi Square to Sunninghill",
            "07D Gandhi Square to Centurion",
            "08 Stock Exchange to Barlopark",
            "09 Gandhi Square to Linbro Park",
            "10 Stock Exchange to Melrose Arch",
            "12 Gandhi Square to Lonehill",
            "13B Gandhi Square to Lyndhurst",
            "06 Gandhi Square to Leeuwkop prison via Woodmead, Sunninghill, and Petervale",
            "15B Gandhi Square to Lombardy",
            "15F Gandhi Square to Longmeadow",
            "18 Forest Hill to Johannesburg Hospital",
            "32 Braamfontein to Eastgate Mall",
            "33 Westgate to Bedford Gardens",
            "34 Stock Exchange to Malvern",
            "46 Rossetenville to Jhb Hospital",
            "47 Gandhi Square to Townsview",
            "48 Gandhi Square to Towerby",
            "52B Fashion District to Winchester hills",
            "54 Sanlam to The Glen",
            "55B Gandhi Square to Evans Park",
            "56 Mayfield Park to Braamfontein",
            "59 Gandhi Square to Crown Extension",
            "62 Claremont to Fashion District",
            "71A Gandhi Square to Fairlands",
            "74 Westgate to Blaigowrie",
            "79 Gandhi Square to Parkhurst",
            "80A Gandhi Square to Beverley Gardens",
            "80D Gandhi Square to Dainfern",
            "82 Gandhi Square to Ferndale",
            "83 Westgate to Malanshof",
            "83C Westgate to Randpark Ridge",
            "86 Gandhi Square to Kya Sands",
            "89 Gandhi to Northgate",
            "260 Paarlshoop to Eastgate",
            "262 Hillbrow to Kempton Park",
            "412 Gandhi Square to Witpoortjie",
            "414 Gandhi Square to Lindhaven",
            "415 Gandhi Square to Strubens Valley",
            "417 Gandhi Square to Davidsonville via Fleurhof",
            "421D Belleveue East to Sunninghill",
            "430 Westgate Mall to Sunninghill",
            "520 Naturena to Randburg",
            "45 Marist Brothers to Braamfontein",
            "44 South Hills to Braamfontein",
            "57 Naturena to Braamfontein",
            "59 Gandhi Sqaure to Crown extension",
            "67 Gandhi Square to Melville",
            "63 Newlands to Fashion District",
            "91 Kliptown to Heriotdale",
            "92 Kliptown to Robertsham",
            "93 Longtill to New Centre",
            "313 Gandhi Square to Lyndhurst",
            "420 Westgate Mall to Randburg",
            "522 Naturena to Randburg",
            "523 Naturena to Fourways Mall",
            "546E Rosettenville to Leewkop Prison",
            "547C Townsview to Santon",
            "550 Princess to Jabulani Mall",
            "562 Southgate Mall to ORT Freight Terminal",





        ];

        /*initiate the autocomplete function on the "myInput" element, and pass along the busRoutes array as possible autocomplete values:*/
        autocomplete(document.getElementById("myInput"), busRoutes);
    </script>
    <!--view routes-->
   <script>
       // Get references to the button and routes container
       const routeButton = document.getElementById("route-button");
       const routesContainer = document.getElementById("routes-container");

       // Add a click event listener to the button
       routeButton.addEventListener("click", function () {
           // Toggle the visibility of the routes container
           if (routesContainer.style.display === "block") {
               routesContainer.style.display = "none";
           } else {
               routesContainer.style.display = "block";
           }
       });
   </script>



</body>

</html>




