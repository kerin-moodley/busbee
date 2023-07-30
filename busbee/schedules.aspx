<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="schedules.aspx.cs" Inherits="busbee.schedules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Bus Schedules - BusBee</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        
    <link href="dashboard-content/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    
</head>

     <body class="sb-nav-fixed">
        <form id="form2" runat="server">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">BUSBEE</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            <!-- Navbar-->

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
                            <a class="nav-link schedules-dashboard-link" href="schedules.aspx">
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




                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; BUSBEE 2023</div>
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
<script src="dashboard-content/js/schedules.js"></script>
        </form>
</body>
</html>
