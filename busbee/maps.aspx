<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maps.aspx.cs" Inherits="busbee.maps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - BusBee</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="dashboard-content/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        <link rel="stylesheet" type="text/css" href="dashboard-content/css/maps-style.css" />
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8wSR6iW7ZHSD3KPUDYP9dXlGovy1RxhE&callback=initMap&libraries=geometry,places&v=weekly" defer></script>


    </head>



    <body class="sb-nav-fixed">
        <form id="form2" runat="server">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">BUSBEE</a>        

            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="dashboard.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Notifications
                            </a>
                          
                            <div class="sb-sidenav-menu-heading">Services</div>
                            <a class="nav-link" href="maps.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Maps
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Purchase bus tickets
                            </a>
                            <a class="nav-link" href="schedules.aspx">
                                <div class="sb-nav-link-icon"><i  class="fas fa-table"></i></div>
                                Bus Schedules
                            </a>
                            <a class="nav-link" href="reportproblem.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Report a problem
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        
                    </div>
                </nav>
            </div>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        
                        <div>

                            
                            <div>
                          <iframe id="947-traffic" src="https://947.co.za/features/947-traffic-updates" align="center" frameborder:"0" scrolling="yes" style="width:80%; height:500px"></iframe>
                      </div>
                            
                            <br />
                            <br />
                            <br />    
                            
                            <div>
                          <div id="map" align="center" style="width: 800px; height: 400px;"></div>
                      </div>
                            
                         <script>
                             function initMap() {
                                 // Create the map.
                                 const map = new google.maps.Map(document.getElementById("map"), {
                                     zoom: 13,
                                     center: { lat: 0, lng: 0 }, // Set a default center
                                 });

                                 // Try to get the device location using the Geolocation API.
                                 if (navigator.geolocation) {
                                     navigator.geolocation.getCurrentPosition(
                                         (position) => {
                                             // Success callback
                                             // Get the latitude and longitude from the position object.
                                             const pos = {
                                                 lat: position.coords.latitude,
                                                 lng: position.coords.longitude,
                                             };
                                             // Set the map center to the device location.
                                             map.setCenter(pos);
                                         },
                                         () => {
                                             // Error callback
                                             alert("Unable to get your location.");
                                         }
                                     );
                                 } else {
                                     // Browser doesn't support Geolocation
                                     alert("Your browser doesn't support geolocation.");
                                 }

                                 // Add the traffic layer to the map.
                                 const trafficLayer = new google.maps.TrafficLayer();
                                 trafficLayer.setMap(map);
                             }

                         </script>


                        </div>
                        
                    </div>

                </main>





                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; BusBee 2023</div>
                        </div>
                    </div>
                </footer>
            </div>


        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>

        </form>
    </body>
</html>
