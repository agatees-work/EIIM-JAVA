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
    <title>Sign Up</title>

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
        h2
        {
        	font-family: PT Serif;
        }
        .signup-container {
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

<div class="container signup-container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-sm-8 col-xs-12">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Sign Up</h2>
                </div>
                <div class="card-body">
                    <form action="SignUpValidation" method="post">
                        <div class="form-group">
                            <label for="username" class="label">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" required pattern="[A-Za-z]+" title="Username must contain only alphabetical characters.">
                        </div>
                        <div class="form-group">
                            <label for="email" class="label">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Please enter a valid email address" required>
                        </div>
                        <div class="form-group">
							<label for="phone" class="label">Phone:</label>
    						<input type="tel" id="phone" name="phone"  class="form-control"  pattern="[6-9]\d{9}" title="Please enter a valid phone number starting with 6, 7, 8, or 9" required>
                        </div>
                        <div class="form-group">
	                        <label for="password" class="label">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" title="Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character.">
                        </div>
                        <br>	
                        <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
                    </form>
                </div>
                <div class="card-footer text-center">
                    <p>Already have an account? <a href="SignIn.jsp">Sign In</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Include Bootstrap JS and jQuery -->
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