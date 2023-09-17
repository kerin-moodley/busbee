<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="busbee.dashboard" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard</title>
  <link rel="stylesheet" href="../dashboard-assets/css/styles.min.css" />
    <link rel="stylesheet" href="profilecss/beestyle.css" />
     <script type="text/javascript">
        // JavaScript function to redirect after a delay
        function redirectToNextPage() {
            setTimeout(function () {
                window.location.href = 'dashboard-profile.aspx'; 
            }, 5000); // 5000 milliseconds (5 seconds)
        }
     </script>
</head>

<<<<<<< HEAD
<body onload="redirectToNextPage()">

 
       <div class="bee-container">
        <div class="bee">
            <div class="eye"></div>
            <div class="antenna"></div>
            <div class="mouth"></div>
        </div>
        <div id="background-wrap">
    <div class="x1">
        <div class="cloud"></div>
    </div>
=======

<body>

    <form runat="server">

   
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">



    <!-- Sidebar Start -->
    <aside class="left-sidebar">
      <!-- Sidebar scroll-->
      <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
          <a href="./landing.aspx" class="text-nowrap logo-img">
              <asp:Image ID="logoimage" src="dashboard-assets/images/logos/logo.png" width="180" alt="" runat="server" />
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
              <a class="sidebar-link" href="dashboard-delete.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-user-minus"></i>
                </span>
                <span class="hide-menu">Delete Account</span>
              </a>
            </li>



            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Services</span>
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
              <asp:LinkButton ID="logoutlink" class="sidebar-link" runat="server" OnClick="logoutlink_Click">
                  <i class="ti ti-logout"></i>
                  Log out
              </asp:LinkButton>


            </li>

              
          </ul>
           




            <asp:Label ID="lblusername" class="hide-menu" runat="server" Text="Logged in as:"></asp:Label>


        </nav>
        <!-- End Sidebar navigation -->






      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!--  Sidebar End -->



    <!--  Main wrapper -->
    <div class="body-wrapper">
      

        <!--  Header Start -->
      <header class="app-header">


        <nav class="navbar navbar-expand-lg navbar-light">


          <ul class="navbar-nav">


            <li class="nav-item">
              <a class="nav-link nav-icon-hover" href="dashboard-notifications.aspx">
                <i class="ti ti-bell-ringing"></i>
                <div class="notification bg-primary rounded-circle"></div>
              </a>
            </li>
          </ul>


          <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
            <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
                
                




        </ul>
      </div>
            
            <!-- Create a container element for the image button and the dropdown content -->
            <div style="position: relative;">
                
                <!-- Add an onclick attribute to call a JavaScript function that will toggle the dropdown content -->
                <a href="dashboard-profile.aspx"> <img src="../dashboard-assets/images/profile/user-1.jpg" alt="" width="40" height="40" class="rounded-circle"> </a>              

            </div>

     


        </nav>
      </header>
      <!--  Header End -->




>>>>>>> 174c19d5ca3c7bfa81ebe58f8de2e55dd2eacf32

    <div class="x2">
        <div class="cloud"></div>
    </div>

    <div class="x3">
        <div class="cloud"></div>
    </div>

    <div class="x4">
        <div class="cloud"></div>
    </div>

    <div class="x5">
        <div class="cloud"></div>
    </div>
</div>

    </div>
<<<<<<< HEAD
=======
  </div>
>>>>>>> 174c19d5ca3c7bfa81ebe58f8de2e55dd2eacf32




<<<<<<< HEAD






=======
         </form>
>>>>>>> 174c19d5ca3c7bfa81ebe58f8de2e55dd2eacf32

</body>

</html>