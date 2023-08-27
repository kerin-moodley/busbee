


<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard</title>
  <link rel="stylesheet" href="../dashboard-assets/css/styles.min.css" />

    <style>
         .body-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: rgba(0, 0, 0, 0.1);
        }
        /* Styling for the Bus Booking System */
.booking-system {
    background: #ffffff;
    border-radius: 20px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.2);
    padding: 50px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    margin-top: 20px;
  
}

.booking-system h2 {
    color: #333;
    font-size: 1.5rem;
    margin-bottom: 10px;
}

.booking-system label {
    color: #555;
    margin-top: 10px;
    display: block;
}

.booking-system select,
.booking-system input[type="time"],
.booking-system input[type="checkbox"],
.booking-system button {
    margin: 5px 0;
    padding: 10px;
    border: none;
    border-radius: 5px;
    width: 100%;
    font-size: 0.9rem;
}

.booking-system button{
    background-color: #008374;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border:none;
    border-radius:8px;
    padding:10px;
    
}

.booking-system button:hover {
    background-color: #45a049;
}

.booking-result {
    margin-top: 20px;
    font-weight: bold;
    color: #555;
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

         <div class="booking-system">
        <h2>Get Notified When Your Next Ride Is On Its Way</h2>
        <div id="bus-selection">
            <label for="bus-select">Choose a bus:</label>
            <select id="bus-select">
                <option value="412 Ghandi Square to Witpoortjie">412 Ghandi Square to Witpoortjie</option>
                <option value="413 Ghandi Square to Roodekrans">413 Ghandi Square to Roodekrans</option>
            </select>
        </div>
        <div id="time-selection">
            <label for="time-input">Choose a time between 04:00 AM and 07:00 PM:</label>
            <select id="time-input">
               <option value="06:10 AM">06:10 AM</option>
        <option value="07:05 AM">07:00 AM</option>
        <option value="08:10 AM">08:10 AM</option>
        <option value="09:00 AM">09:00 AM</option>
        <option value="09:45 AM">09:45 AM</option>
        <option value="10:45 AM">10:45 AM</option>
        <option value="11:30 AM">11:30 AM</option>
        <option value="12:20 PM">12:20 PM</option>
        <option value="02:00 PM">02:00 PM</option>
        <option value="02:45 PM">02:45 PM</option>
        <option value="03:30 PM">03:30 PM</option>
        <option value="04:10 PM">04:10 PM</option>
        <option value="04:50 PM">04:50 PM</option>
        <option value="05:30 PM">05:30 PM</option>
        <option value="06:15 PM">06:15 PM</option>
        <option value="07:00 PM">07:00 PM</option>
            </select>
        </div>
        <div id="notification-selection">
            <label for="notification-checkbox">Receive notifications:</label>
            <input type="checkbox" id="notification-checkbox">
        </div>
        <button id="confirm-button" onclick="onConfirmButtonClick()">Confirm Booking</button>
        <div id="result" class="booking-result"></div>
    </div>

   
   

    </div>
  </div>



    <!-- notifications Javascript -->
   
       <script>
           // Populate time options based on bus schedule
           const timeInput = document.getElementById('time-input');
           const busSchedule = {
               '412 Ghandi Square to Witpoortjie': ['06:10', '07:05', '08:10', '09:00', '09:45', '10:45', '11:30', '12:20', '14:00', '14:45', '15:30', '16:10', '16:50', '17:30', '18:15', '19:00'],
               '413 Ghandi Square to Roodekrans': ['04:40', '05:05', '05:40', '06:10', '07:00', '07:45', '08:00', '08:45', '09:45', '10:45', '11:45', '12:45', '13:35', '14:10', '15:45', '16:20', '16:50']
           };

           document.addEventListener('DOMContentLoaded', () => {
               const busSelect = document.getElementById('bus-select');

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

           const confirmButton = document.getElementById('confirm-button');
           confirmButton.addEventListener('click', () => {
               const selectedBus = document.getElementById('bus-select').value;
               const selectedTime = document.getElementById('time-input').value;
               const receiveNotifications = document.getElementById('notification-checkbox').checked;

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
