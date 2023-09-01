<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScholarPage.aspx.cs" Inherits="busbee.purchasebusticket" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard</title>
  <link rel="stylesheet" href="../dashboard-assets/css/styles.min.css" />
    <link rel="stylesheet" href="purchase/stages.css" />
</head>

<body>
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <!-- Sidebar Start -->
    <aside class="left-sidebar">
      <!-- Sidebar scroll-->
      <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
          <a href="./landing.aspx" class="text-nowrap logo-img">
            <img src="dashboard-assets/images/logos/logo.png" width="180" alt="" />
          </a>
          <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
            <i class="ti ti-x fs-8"></i>
          </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
          <ul id="sidebarnav">



            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Home</span>
            </li>



            <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard-profile.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-user"></i>
                </span>
                <span class="hide-menu">Profile</span>
              </a>
            </li>



            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Services</span>
            </li>



            <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-bell-ringing"></i>
                </span>
                <span class="hide-menu">Notifications</span>
              </a>
            </li>



               <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard-schedules.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-calendar"></i>
                </span>
                <span class="hide-menu">Bus Schedules</span>
              </a>
            </li>


            <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard-purchase.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-cards"></i>
                </span>
                <span class="hide-menu">Purchase bus tickets</span>
              </a>
            </li>



            <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard-maps.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-map"></i>
                </span>
                <span class="hide-menu">Maps</span>
              </a>
            </li>



            <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard-problem.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-file-description"></i>
                </span>
                <span class="hide-menu">Report a problem</span>
              </a>
            </li>



            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">AUTH</span>
            </li>



            <li class="sidebar-item">
              <a class="sidebar-link" href="login.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-logout"></i>
                </span>
                <span class="hide-menu">Log out</span>
              </a>
            </li>



            <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard-delete.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-user-minus"></i>
                </span>
                <span class="hide-menu">Delete account</span>
              </a>
            </li>



          </ul>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">
      <div class="wrapper">
    <div class="inner">
                    
                     <div class="container" >
        <h2>Stages </h2>
        <p>Select your stages:</p>

         <div class="button-block">
         <a href="TripsS1.aspx" class="block-button">NO:1 City Centre > Park Town > Joe Slovo and Louis Botha Avenue</a>
         </div>
          <div class="button-block">
         <a href="TripsS2.aspx" class="block-button">NO:2 Corner Jan Smuts Avenue & Empire Road in Braamfontein > Corner Jan Smuts Avenue & Tyrwhitt Road in Rosebank.</a>
         </div>
          <div class="button-block">
         <a href="TripsS3.aspx" class="block-button">NO:3 Corner Jan Smuts  Avenue to Tyrwhitt Road in Rosebank > Craighall Park.</a>
         </div>
         <div class="button-block">
         <a href="TripsS4.aspx" class="block-button">NO:4 Craighall Park along Beyees Nuede Drive > Randburg Mall.</a>
         </div>
         <div class="button-block">
         <a href="TripsS5.aspx" class="block-button">NO:5 Randburg Mall > Beverly Gardens</a>
         </div>
         <div class="button-block">
         <a href="TripsS6.aspx" class="block-button">NO:6 Beverly Gardens to North Gate.</a>
         </div>
         <div class="button-block">
         <a href="TripsS7.aspx" class="block-button">NO:7 Route 520: between Naturena and Randburg Centre</a>
         </div>
         <div class="button-block">
         <a href="TripsS8.aspx" class="block-button">NO:8 Route 420: Westgate Shopping Centre Randburg Centre via Strijdom Park.</a>
         </div>
        
        

       

    </div>
        </div>
         </div>


    </div>
  </div>

  <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/sidebarmenu.js"></script>
  <script src="../assets/js/app.min.js"></script>
  <script src="../assets/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="../assets/js/dashboard.js"></script>
</body>

</html>

