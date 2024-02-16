<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Rise Request</title>
    <style type="text/css">
    .navbar-brand 
        {
        	margin-left: 1%;
        }
       .logo {
    		max-height: 30px; 
    		width: auto; 
		}
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
			background: rgba(0, 120, 0, 0.3);
            z-index: -1;
        }
          h2
        {
        	font-family: PT Serif;
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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<img alt="" src="logo.png" class="logo">
    <a class="navbar-brand" href="#">EDCenter</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>	
  <ul class="navbar-nav mr-auto">
    <li class="nav-item active">
      <a class="nav-link" href="main.jsp">Home</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="serviceDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Services
      </a>
      <div class="dropdown-menu" aria-labelledby="serviceDropdown">
        <a class="dropdown-item" href="#">Rise Service Request</a>
        <a class="dropdown-item" href="#">Service Status</a>
        <a class="dropdown-item" href="#">Service History</a>
      </div>
    </li>
  </ul>
  
  <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        User
      </a>
      <div class="dropdown-menu" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="#">Update User Details</a>
        <a class="dropdown-item" href="#">Sign Out</a>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Notification</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#">Payments</a>
    </li>


  </ul>
</nav>
<br>
<div class="container signup-container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-sm-8 col-xs-12">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Service Request Form</h2>
                </div>
                <div class="card-body">
                    <form action="signupProcess.jsp" method="post">
                        <div class="form-group">
                            <label for="username" class="label">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="label">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label class="label">Device:</label>
						        <select  class="form-control" id="dropdownSelection" name="dropdownSelection" required>
					                <option value="" disabled selected></option>
					                <option value="option1">Laptop</option>
					                <option value="option2">SmartPhone</option>
					                <option value="option3">Speaker</option>
									<option value="option3">Smart TV</option>
									<option value="option3">Earphones</option>
					            </select>
                        </div>
                        <div class="form-group">
                            <label class="label">Service types:</label>
						        <select  class="form-control" id="dropdownSelection" name="dropdownSelection" required>
					                <option value="" disabled selected></option>
					                <option value="option1">Hardware service</option>
					                <option value="option2">Software Service</option>
					                <option value="option3">General Service</option>
					            </select>
                        </div>
                        
                        <div class="form-group">
	                        <label for="description" class="label">Description:</label>
                            <input type="text" class="form-control" id="remark" name="description" required>
                        </div>
                        <div class="form-group">
	                        <label for="address" class="label">Address:</label>
                            <input type="text" class="form-control" id="remark" name="address" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Submit the request</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<%@ include file="footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>