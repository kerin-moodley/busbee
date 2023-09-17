﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="busbee.dashboard" %>

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











</body>

</html>