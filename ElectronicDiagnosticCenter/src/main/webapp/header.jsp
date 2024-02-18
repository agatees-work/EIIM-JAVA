<!--
Title              : ElectronicDiagnosticCenter
Author             : Agateeswaran K 
Created on         : 26/01/2024
Last Modified Date : 17/02/2024
Reviewed by        : Sabapathi Shanmugam
Reviewed on        : 05/02/2024
 -->
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
         .logo {
    		max-height: 30px; 
    		width: auto; 
		}

        .login-container {
            margin-top: 5%;
        }

        p
        {
        	font-size: x-large;
        	color: white;
        }
        .navbar-brand 
        {
        	margin-left: 1%;
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
</nav>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>