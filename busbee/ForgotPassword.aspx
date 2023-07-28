<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
    <!-- Add your CSS styles here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #fff;
            margin-top: 100px;
        }

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #31b099;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
       .back-btn {
            display: inline-block;
            width: 96%;
            padding: 10px;
            background-color: #31b099;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .back-btn:hover {
            background-color: #ddd;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Password Reset</h2>
        <form action="ForgotPassword.aspx" method="post">
            <div class="form-group">
                <label for="txtEmail">Email Address:</label>
                <input type="email" id="txtEmail" name="txtEmail" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Reset Password">
            </div>

        </form>
         <a href="login.aspx" class="back-btn">Back to Login</a>
    </div>
</body>

