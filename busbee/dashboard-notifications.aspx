<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard-notifications.aspx.cs" Inherits="busbee.notifications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Dashboard</title>
  <link rel="stylesheet" href="../dashboard-assets/css/styles.min.css" />
  <link rel="stylesheet" href="../dashboard-assets/css/notifications.css"/>
</head>


<body>

    <form id="form1" runat="server">

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



          </ul>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">

         <div class="booking-system">
        <h2>Get Notified When Your Next Ride Is On Its Way</h2>
             


        <div id="bus-selection">
            <label for="bus_select" style="font-size:18px">Choose a bus:</label>
            <asp:DropDownList ID="bus_select" runat="server">
                <asp:ListItem Value="412 Ghandi Square to Witpoortjie"></asp:ListItem>
                <asp:ListItem Value="413 Ghandi Square to Roodekrans"></asp:ListItem>
            </asp:DropDownList>
        </div>




        <div id="time-selection">
            <label for="time_input"style="font-size:18px">Choose a time between 04:00 AM and 07:00 PM:</label>

            <asp:DropDownList ID="time_input" runat="server">
                 <asp:ListItem Value="07:00"></asp:ListItem>
                 <asp:ListItem Value="06:10"></asp:ListItem>
                 <asp:ListItem Value="08:10"></asp:ListItem>
                 <asp:ListItem Value="09:00"></asp:ListItem>
                 <asp:ListItem Value="09:45"></asp:ListItem>
                 <asp:ListItem Value="10:45"></asp:ListItem>
                 <asp:ListItem Value="11:30"></asp:ListItem>
                 <asp:ListItem Value="12:20"></asp:ListItem>
                 <asp:ListItem Value="14:00"></asp:ListItem>
                 <asp:ListItem Value="14:45"></asp:ListItem>
                 <asp:ListItem Value="15:30"></asp:ListItem>
                 <asp:ListItem Value="16:10"></asp:ListItem>
                 <asp:ListItem Value="16:50"></asp:ListItem>
                 <asp:ListItem Value="17:30"></asp:ListItem>
                 <asp:ListItem Value="18:15"></asp:ListItem>
                 <asp:ListItem Value="19:00"></asp:ListItem>
             </asp:DropDownList>

            
            <div class="form-group">
    <label for="chkNotifications">Do you want to receive notifications?</label>
    <asp:CheckBox ID="chkNotifications" runat="server" CssClass="custom-checkbox"  />
</div>


        </div>
             
             <br />
             
             <asp:Label ID="result" runat="server" Text="" class="booking-result"></asp:Label>
             <asp:Button ID="confirm_button" class="confirm_button" runat="server" Text="Confirm Booking" OnClick="confirm_button_Click" Width="432px" />
    </div>

   
   

    </div>
  </div>



    <!-- notifications Javascript -->
   
       <script>
           // Populate time options based on bus schedule
           const timeInput = document.getElementById('time_input');
           const busSchedule = {
               '412 Ghandi Square to Witpoortjie': ['06:10', '07:05', '08:10', '09:00', '09:45', '10:45', '11:30', '12:20', '14:00', '14:45', '15:30', '16:10', '16:50', '17:30', '18:15', '19:00'],
               '413 Ghandi Square to Roodekrans': ['04:40', '05:05', '05:40', '06:10', '07:00', '07:45', '08:00', '08:45', '09:45', '10:45', '11:45', '12:45', '13:35', '14:10', '15:45', '16:20', '16:50']
           };

           document.addEventListener('DOMContentLoaded', () => {
               const busSelect = document.getElementById('bus_select');

               // Event listener for bus selection change
               busSelect.addEventListener('change', () => {
                   const selectedBus = busSelect.value;
                   const selectedBusSchedule = busSchedule[selectedBus];

                   // Clear previous time options
                   timeInput.innerHTML = '';

                   // Populate time options
                   selectedBusSchedule.forEach(time => {
                       const option = document.createElement('option');
                       option.value = time;
                       option.textContent = time;
                       timeInput.appendChild(option);
                   });
               });
           });

           const confirmButton = document.getElementById('confirm_button');
           confirmButton.addEventListener('click', () => {
               const selectedBus = document.getElementById('bus_select').value;
               const selectedTime = document.getElementById('time_input').value;
               const receiveNotifications = document.getElementById('notification_checkbox').checked;

               const selectedTimeParts = selectedTime.split(':');
               const selectedHour = parseInt(selectedTimeParts[0]);

               if (selectedHour < 4 || selectedHour > 19) {
                   const resultDiv = document.getElementById('result');
                   resultDiv.textContent = "Error: Bus is unavailable at this time. Please choose a time between 04:00 AM and 07:00 PM.";
                   return;
               }

               const estimatedArrivalTime = new Date(`2023-08-26T${selectedTime}:00`);
               estimatedArrivalTime.setMinutes(estimatedArrivalTime.getMinutes() + 35);

               let resultMessage = `Bus ${selectedBus} is on its way.`;
               if (receiveNotifications) {
                   const notificationTime = new Date(estimatedArrivalTime);
                   notificationTime.setMinutes(notificationTime.getMinutes() - 10);
                   resultMessage += ` You will receive a notification at ${notificationTime.toLocaleTimeString()}.`;
               }

               const resultDiv = document.getElementById('result');
               resultDiv.textContent = resultMessage;
           });
       </script>

    </form>



    <!-- End of notifications Javascript -->
  <script src="../dashboard-content/js/notifications.js"></script>
  <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/js/sidebarmenu.js"></script>
  <script src="../assets/js/app.min.js"></script>
  <script src="../assets/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="../assets/js/dashboard.js"></script>


</body>










</html>
