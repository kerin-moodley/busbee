<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusNotification.aspx.cs" Inherits="busbee.BusNotification" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard</title>
  <link rel="stylesheet" href="../dashboard-assets/css/styles.min.css" />
      <link rel="stylesheet" href="./busdriver.css" />

</head>

<body>
      
<!--Bus Notification-->

 <h1>Bus Location Information</h1>
    <div>
    <ul id="locationHistory"></ul>
        </div>


    <script>
        // Retrieve and display the location history from localStorage
        function displayLocationHistory() {
            const locationHistory = JSON.parse(localStorage.getItem('locationHistory'));

            if (locationHistory) {
                const historyList = document.getElementById('locationHistory');

                locationHistory.forEach(locationInfo => {
                    const locationItem = document.createElement('li');
                    locationItem.textContent = locationInfo;
                    historyList.appendChild(locationItem);
                });
            }
        }

        // Call this function to display location history when the page loads
        displayLocationHistory();
    </script>


    
 
 
</body>

</html>


