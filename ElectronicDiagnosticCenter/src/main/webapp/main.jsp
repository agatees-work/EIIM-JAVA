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
<title>ED Center</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
        .navbar-brand 
        {
        	margin-left: 1%;
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
       .logo {
    		max-height: 30px; 
    		width: auto; 
		}

        .login-container {
            margin-top: 5%;
        }

        p,h1
        {
        	font-size: x-large;
        	color: white;
        }
</style>
</head>
<body class="d-flex flex-column min-vh-100">
<% 
	HttpSession mainsession  = request.getSession(); 
    String userid = (String)mainsession.getAttribute("userid");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<img alt="" src="logo.png" class="logo">
    <a class="navbar-brand" href="main.jsp">EDCenter</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>	
  <ul class="navbar-nav mr-auto">
    <li class="nav-item active">
      <a class="nav-link" href="#">Home</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="serviceDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Services
      </a>
      <div class="dropdown-menu" aria-labelledby="serviceDropdown">
        <a class="dropdown-item" href="service.jsp">Rise Service Request</a>
        <a class="dropdown-item" href="servicestatus.jsp">Service Status</a>
        <a class="dropdown-item" href="servicehistory.jsp">Service History</a>
      </div>
    </li>
  </ul>
  
  <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        User
      </a>
      <div class="dropdown-menu" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="underdevelopment.jsp">Update User Details</a>
        <a class="dropdown-item" href="/ElectronicDiagnosticCenter/SignOut">Sign Out</a>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="underdevelopment.jsp">Notification</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="underdevelopment.jsp">Payments</a>
    </li>


  </ul>
</nav><br><br>
<div class="container mt-5 flex-grow-1">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h1>Electronic Diagnostic Center</h1>
            <p>Multi-Brands Trusted Service center.We are maintain a transparent device service status.We make sure that your device is serviced and function as if it works as a new one. We make sure the device is repaired anonymously </p>
        	<div class="col-md-12 text-center">
        		<a href="service.jsp" class="btn btn-primary" >Rise a service Request</a>
        	</div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<br>
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