<!--
Title              : ElectronicDiagnosticCenter
Author             : Agateeswaran K 
Created on         : 26/01/2024
Last Modified Date : 17/02/2024
Reviewed by        : Sabapathi Shanmugam
Reviewed on        : 05/02/2024
 -->
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Service History</title>
    <style type="text/css">
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
        table {
	background-color: white;
}
    </style>
    <!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.5/datatables.min.css"/>
    
</head>
<body class="d-flex flex-column min-vh-100">

<%@ include file="header.jsp" %>
<div class="container mt-5 flex-grow-1">
<table border="1"class="table table-bordered table-striped">
	<thead>
    	<tr>
         	<th>Service ID</th>
            <th>Description</th>
            <th>Service Status</th>
            <th>Payment Status</th>
		</tr>
	</thead>
<tbody>
<%
HttpSession mainsession = request.getSession(); 
String userid = (String) mainsession.getAttribute("userid");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cdcenterdb","root","Aspire@123");
            PreparedStatement statement=connnection.prepareStatement("SELECT * FROM servicerequest where userid=?;");
            statement.setString(1, userid);
            ResultSet result=statement.executeQuery();
            
            while(result.next()) {
			     %>
			     <tr>
			     	<td><%= result.getString("serviceid") %></td>
			        <td><%= result.getString("description") %></td>
					<td><%= result.getString("servicestatus") %></td>
					<td><%= result.getString("paymentstatus") %></td>
			    </tr>
				
				<!-- Add more rows as needed -->
				
				<%
            }
            connnection.close();
        } catch(Exception e) {
            out.println(e);
        }
        %>	
</tbody>
</table>
</div>
<%@ include file="footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
