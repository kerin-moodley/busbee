<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardProfile.aspx.cs" Inherits="busbee.DashboardProfile" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard</title>
  <link rel="stylesheet" href="../dashboard-assets/css/styles.min.css" />
  <link rel ="stylesheet" href="profilecss/profile.css" />
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
              <a class="sidebar-link" href="DashboardProfile.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-user"></i>
                </span>
                <span class="hide-menu">Profile</span>
              </a>
            </li>
              
              
              
              <li class="sidebar-item">
              <a class="sidebar-link" href="DashboardDelete.aspx" aria-expanded="false">
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
              <a class="sidebar-link" href="Dashboard-BusDriver.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-user"></i>
                </span>
                <span class="hide-menu">Bus Driver</span>
              </a>
            </li>

            <li class="sidebar-item">
              <a class="sidebar-link" href="dashboard-notifications.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-bell-ringing"></i>
                </span>
                <span class="hide-menu">Notifications</span>
              </a>
            </li>



               <li class="sidebar-item">
              <a class="sidebar-link" href="DashboardSchedule.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-calendar"></i>
                </span>
                <span class="hide-menu">Bus Schedules</span>
              </a>
            </li>


            <li class="sidebar-item">
              <a class="sidebar-link" href="DashboardMaps.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-map"></i>
                </span>
                <span class="hide-menu">Maps</span>
              </a>
            </li>



            <li class="sidebar-item">
              <a class="sidebar-link" href="DashboardReport.aspx" aria-expanded="false">
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
              <a class="sidebar-link" href="Bus login.aspx" aria-expanded="false">
                <span>
                  <i class="ti ti-logout"></i>
                </span>
                <span class="hide-menu">Log out</span>
              </a>
            </li>



          </ul>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
      </div>
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">





      <!--Profile page-->
<div class="header">
        <h1>PERSONAL DETAILS</h1>
    </div>
   
   <div class="wrapper">
    <div class="avatar-container">
        <img src="profilecss/BusdriverBee.png" alt="Avatar" class="avatar" id="avatar">
        <p>JPG or PNG no larger than 5 MB</p>
        <label for="fileInput" class="upload-btn">Upload Image</label>
        <input type="file" id="fileInput" accept="image/*" onchange="updateAvatar(this)">

        <div class="form-container">
            <div class="form-group">
                <label for="username">User Name:</label>
                <input type="text"  class="form-control" id="Text8" runat="server" required="required" />
            </div>

            <div class="form-group">
                <label for="firstname">First Name:</label>
                <input type="text" class="form-control" id="Text9" runat="server" required="required" />
            </div>

            <div class="form-group">
                <label for="lastname">Last Name:</label>
                <input type="text" class="form-control" id="Text10" runat="server" required="required" />
            </div>

            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="text" class="form-control" id="Text11" runat="server" required="required" />
            </div>

            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" class="form-control" id="Text12" runat="server" required="required" />
            </div>

            <div class="form-group">
                <label for="bday">Birthday:</label>
                <input type="text" class="form-control" id="Text13" runat="server" required="required" />
            </div>

            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" class="form-control" id="Text14" runat="server" required="required" />
            </div>

            <button class="save-btn">Save Changes</button>
        </div>
    </div>
</div>

         
    

    


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

  <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/sidebarmenu.js"></script>
  <script src="../assets/js/app.min.js"></script>
  <script src="../assets/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="../assets/js/dashboard.js"></script>
</body>

</html>
