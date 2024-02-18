<!--
Title              : ElectronicDiagnosticCenter
Author             : Agateeswaran K 
Created on         : 26/01/2024
Last Modified Date : 17/02/2024
Reviewed by        : Sabapathi Shanmugam
Reviewed on        : 05/02/2024
 -->
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
         body {
            background-image: url("background.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh; 
            margin: 0; 
            padding: 0; 
        }
        h2
        {
        	font-family: PT Serif;
        }
         body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
			background: rgba(204, 255, 204, 0.5);
            z-index: -1;
        }
        .signin-container {
            margin-top: 5%;
        }
        .card-header
        {
        	background-color: rgba(230, 230, 230,  0.5);
        }
        .form-group
        {
        	color: black;
        }
        .label
        {
        	font-family: Inconsolata;
        }
        p,button
        {
        	font-family: Inconsolata;
        }
        .card-body
        {
			background-color: #ccffff;
        }
    </style>
</head>
<body>

<div class="container signin-container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-sm-8 col-xs-12">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Login</h2>
                </div>
                <div class="card-body">
                    <form action="SigninValidation" method="post">
                        <div class="form-group">
                            <label for="username" class="label">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" required pattern="[A-Za-z]+" title="Username must contain only alphabetical characters.">
                        </div>
                        <div class="form-group">
                            <label for="password" class="label">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" title="Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character.">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                    </form>
                </div>
                <div class="card-footer text-center">
                    <p>Don't have an account? <a href="SignUp.jsp">Sign Up</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    // Check if the errorMessage attribute is present
    var errorMessage = '<%= request.getAttribute("errorMessage") %>';

    // Display a pop-up if the message is not empty
    if (errorMessage && errorMessage.trim() !== '') {
        alert(errorMessage);
    }
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
