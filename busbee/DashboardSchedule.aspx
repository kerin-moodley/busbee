<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardSchedule.aspx.cs" Inherits="busbee.DashboardSchedule" %>


<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard</title>
  <link rel="stylesheet" href="../dashboard-assets/css/styles.min.css" />
    <style>
        
.scheduleTables table {
    border-radius: 10px; /* Curved border */
    box-shadow: 0 8px 16px 0 rgba(31, 38, 135, 0.37);
    backdrop-filter: blur(4px);
    -webkit-backdrop-filter: blur(4px);
    border: 1px solid rgba(255, 255, 255, 0.18);
    color: black; /* Text color */
    width: 95%;
    margin: 0 auto; /* Center the table */
}
.scheduleTables h3 {
    text-align:center;
    margin-bottom:15px;
}
.scheduleTables th {
  background-color: #008374;
    color: white;
    padding: 10px;
}


.scheduleTables td, th {
    padding: 12px 15px;

}


/* Additional styles for dropdowns */

.scheduleTables .select-container {
    display: flex;
    align-items: center;
    gap: 1rem;
}
    </style>
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
              <a class="sidebar-link" href="dashboard-schedules.aspx" aria-expanded="false">
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
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">
      


        <main class="scheduleTables">
                <div class="container mt-4">
        <h2>Bus Schedules</h2>
        <div class="mb-4">
            <select id="busSelect" class="form-select">
                <option value="0">Select a Bus</option>
                <option value="1">412 Ghandi Square to Witpoortjie</option>
                <option value="2">412 Witpoortie to Ghandi Square Departure time</option>
                <option value="3">413 Ghandi Square to Roodekrans</option>
                <option value="4">413 Roodekrans to Ghandi Square </option>
               
               
            </select>
        </div>
       
        <div id="busTables" style="display: none;">
            <div id="bus1Table" class="bus-tables">
                
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Bus Number</th>
                            <th>Departure Time</th>
                            
                              <th>Expected Arrival Time</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <h3>Monday-Friday</h3>
                         <tr>
                             
                             <td>01</td>
                            <td>06:10 AM</td>
                            <td>07:40 AM</td>
                        </tr>
                        <tr>
                           <td>02</td>
                            <td>07:05 AM</td>
                            <td>08:35 AM</td>
                        </tr>
                        <tr>
                           <td>03</td>
                            <td>08:10 AM</td>
                            <td>09:40 AM</td>
                        </tr>
                        <tr>
                           <td>04</td>
                            <td>09:00 AM</td>
                            <td>10:30 AM</td>
                        </tr>
                         <tr>
                            <td>05</td>
                            <td>09:45 AM</td>
                            <td>11:15 AM</td>
                        </tr>
                        <tr>
                            <td>06</td>
                            <td>10:45 AM</td>
                            <td>12:15 PM</td>
                        </tr>
                        <tr>
                           <td>07</td>
                            <td>11:30 AM</td>
                            <td>13:00 M</td>
                        </tr>
                        <tr>
                            <td>08</td>
                            <td>12:20 PM</td>
                            <td>13:50 PM</td>
                        </tr>
                        <tr>
                            <td>09</td>
                            <td>14:00 PM</td>
                            <td>15:30 PM</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>14:45 PM</td>
                            <td>16:15 PM</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>15:30 PM</td>
                            <td>17:00 PM</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>16:10 PM</td>
                            <td>17:40 PM</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>16:50 PM</td>
                            <td>18:20 PM</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>17:30 PM</td>
                            <td>19:00 PM</td>
                        </tr>
                        <tr>
                            <td>15</td>
                            <td>18:15 PM</td>
                            <td>19:45 PM</td>
                        </tr>
                       <tr>
                            <td>16</td>
                            <td>19:00 PM</td>
                            <td>20:30 PM</td>
                        </tr>
                    </tbody>
                </table>
            </div>
           
            <div id="bus2Table" class="bus-tables">
                
               <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Bus Number</th>
                            <th>Departure Time</th>
                            
                              <th>Expected Arrival Time</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <h3>Monday-Friday</h3>
                          <tr>
                             <td>01</td>
                            <td>04:40 AM</td>
                            <td>06:10 AM</td>
                        </tr>
                        <tr>
                           <td>02</td>
                            <td>05:05 AM</td>
                            <td>06:35 AM</td>
                        </tr>
                        <tr>
                           <td>03</td>
                            <td>05:40 AM</td>
                            <td>07:10 AM</td>
                        </tr>
                        <tr>
                           <td>04</td>
                            <td>06:10 AM</td>
                            <td>07:40 AM</td>
                        </tr>
                         <tr>
                            <td>05</td>
                            <td>07:00 AM</td>
                            <td>08:30 AM</td>
                        </tr>
                        <tr>
                            <td>06</td>
                            <td>07:45 AM</td>
                            <td>09:15 AM</td>
                        </tr>
                        <tr>
                           <td>07</td>
                            <td>08:00 AM</td>
                            <td>09:30 AM</td>
                        </tr>
                        <tr>
                            <td>08</td>
                            <td>08:45 PM</td>
                            <td>10:15 PM</td>
                        </tr>
                        <tr>
                            <td>09</td>
                            <td>09:45 PM</td>
                            <td>11:15 PM</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>10:45 PM</td>
                            <td>12:15 PM</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>11:45 PM</td>
                            <td>13:15 PM</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>12:45 PM</td>
                            <td>14:15 PM</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>13:35 PM</td>
                            <td>15:05 PM</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>14:10 PM</td>
                            <td>15:040 PM</td>
                        </tr>
                        <tr>
                            <td>15</td>
                            <td>15:45 PM</td>
                            <td>17:15 PM</td>
                        </tr>
                       <tr>
                            <td>16</td>
                            <td>16:20 PM</td>
                            <td>17:50 PM</td>
                        </tr>
                         <tr>
                            <td>16</td>
                            <td>16:50 PM</td>
                            <td>18:20 PM</td>
                        </tr>
                       
                    </tbody>
                </table>
            </div>

            <div id="bus3Table" class="bus-tables">
                
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Bus Number</th>
                            <th>Departure Time</th>
                            
                              <th>Expected Arrival Time</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                       <h3>Monday-Friday</h3>
                           <tr>
                             <td>01</td>
                            <td>06:20 AM</td>
                            <td>07:30 AM</td>
                        </tr>
                        <tr>
                           <td>02</td>
                            <td>06:40 AM</td>
                            <td>07:45 AM</td>
                        </tr>
                        <tr>
                           <td>03</td>
                            <td>07:25 AM</td>
                            <td>08:35 AM</td>
                        </tr>
                        <tr>
                           <td>04</td>
                            <td>08:10 AM</td>
                            <td>09:20 AM</td>
                        </tr>
                         <tr>
                            <td>05</td>
                            <td>08:45 AM</td>
                            <td>09:55 AM</td>
                        </tr>
                        <tr>
                            <td>06</td>
                            <td>09:45 AM</td>
                            <td>10:55 AM</td>
                        </tr>
                        <tr>
                           <td>07</td>
                            <td>10:00 AM</td>
                            <td>11:10 AM</td>
                        </tr>
                        <tr>
                            <td>08</td>
                            <td>10:45 AM</td>
                            <td>11:55 AM</td>
                        </tr>
                        <tr>
                            <td>09</td>
                            <td>11:35 AM</td>
                            <td>12:45 PM</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>12:20 PM</td>
                            <td>13:30 PM</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>13:15 PM</td>
                            <td>14:25 PM</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>14:00 PM</td>
                            <td>15:10 PM</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>15:30 PM</td>
                            <td>16:40 PM</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>16:10 PM</td>
                            <td>17:20 PM</td>
                        </tr>
                        <tr>
                            <td>15</td>
                            <td>16:45 PM</td>
                            <td>17:55 PM</td>
                        </tr>
                       <tr>
                            <td>16</td>
                            <td>17:30 PM</td>
                            <td>18:40 PM</td>
                        </tr>
                        <tr>
                            <td>16</td>
                            <td>18:20 PM</td>
                            <td>19:30 PM</td>
                        </tr>
                        <tr>
                            <td>16</td>
                            <td>18:45 PM</td>
                            <td>19:55 PM</td>
                        </tr>
                
                    </tbody>
                </table>
            </div>
                


            <div id="bus4Table" class="bus-tables">
                
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Bus Number</th>
                            <th>Departure Time</th>
                            
                              <th>Expected Arrival Time</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <h3>Monday-Friday</h3>
                           <tr>
                             <td>01</td>
                            <td>05:00 AM</td>
                            <td>06:10 AM</td>
                        </tr>
                        <tr>
                           <td>02</td>
                            <td>05:40 AM</td>
                            <td>06:50 AM</td>
                        </tr>
                        <tr>
                           <td>03</td>
                            <td>06:00 AM</td>
                            <td>07:10 AM</td>
                        </tr>
                        <tr>
                           <td>04</td>
                            <td>06:45 AM</td>
                            <td>07:55 AM</td>
                        </tr>
                         <tr>
                            <td>05</td>
                            <td>07:00 AM</td>
                            <td>08:10 AM</td>
                        </tr>
                        <tr>
                            <td>06</td>
                            <td>07:45 AM</td>
                            <td>08:55 AM</td>
                        </tr>
                        <tr>
                           <td>07</td>
                            <td>08:20 AM</td>
                            <td>09:30 AM</td>
                        </tr>
                        <tr>
                            <td>08</td>
                            <td>09:20 AM</td>
                            <td>10:30 AM</td>
                        </tr>
                        <tr>
                            <td>09</td>
                            <td>10:05 AM</td>
                            <td>11:15 AM</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>11:30 AM</td>
                            <td>12:40 PM</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>12:30 PM</td>
                            <td>13:40 PM</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>13:05 PM</td>
                            <td>14:15 PM</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>14:30 PM</td>
                            <td>15:40 PM</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>15:20 PM</td>
                            <td>16:30 PM</td>
                        </tr>
                        <tr>
                            <td>15</td>
                            <td>16:00 PM</td>
                            <td>17:10 PM</td>
                        </tr>
                       <tr>
                            <td>16</td>
                            <td>16:40 PM</td>
                            <td>17:50 PM</td>
                        </tr>
                        <tr>
                            <td>16</td>
                            <td>17:10 PM</td>
                            <td>18:20 PM</td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
           
                        

           
        
        </div>
    </div>
                   <div id="secondTableContainer" style="display: none;">
  <h3>Selected Route Schedule</h3>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Bus Route</th>
        <th>Estimated Time of Arrival</th>
      </tr>
    </thead>
    <tbody id="secondTableBody">
      <!-- The selected route and estimated time of arrival will be dynamically added here -->
    </tbody>
  </table>
</div>
</main>













    </div>
  </div>

    <script>

        document.addEventListener("DOMContentLoaded", function () {
            const busSelect = document.getElementById("busSelect");
            const busTablesContainer = document.getElementById("busTables");

            function showTable(tableToShow) {
                const busTables = document.querySelectorAll(".bus-tables");
                busTables.forEach(table => table.style.display = "none");

                tableToShow.style.display = "block";
            }

            busSelect.addEventListener("change", function () {
                const selectedBus = this.value;
                switch (selectedBus) {
                    case "1":
                        showTable(document.getElementById("bus1Table"));
                        break;
                    case "2":
                        showTable(document.getElementById("bus2Table"));
                        break;
                    case "3":
                        showTable(document.getElementById("bus3Table"));
                        break;
                    case "4":
                        showTable(document.getElementById("bus4Table"));
                        break;
                    default:
                        busTablesContainer.style.display = "none";
                        break;
                }
            });
        });


        // Get references to the bus select element and the bus tables container
        const busSelect = document.getElementById('busSelect');
        const busTablesContainer = document.getElementById('busTables');

        // Show the bus tables when a bus is selected
        busSelect.addEventListener('change', function () {
            // Get the value of the selected bus
            const selectedBus = parseInt(busSelect.value);

            // Hide all bus tables by default
            document.querySelectorAll('.bus-tables').forEach(table => {
                table.style.display = 'none';
            });

            // Show the corresponding bus table if a valid bus is selected
            if (selectedBus > 0) {
                const selectedBusTable = document.getElementById(`bus${selectedBus}Table`);
                if (selectedBusTable) {
                    selectedBusTable.style.display = 'block';
                    busTablesContainer.style.display = 'block'; // Show the bus tables container
                }
            } else {
                busTablesContainer.style.display = 'none'; // Hide the bus tables container if no bus is selected
            }
        });



    </script>
  <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/sidebarmenu.js"></script>
  <script src="../assets/js/app.min.js"></script>
  <script src="../assets/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="../assets/js/dashboard.js"></script>
</body>

</html>
