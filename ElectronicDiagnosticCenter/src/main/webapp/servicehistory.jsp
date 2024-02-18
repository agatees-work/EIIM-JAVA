<!--
Title              : ElectronicDiagnosticCenter
Author             : Agateeswaran K 
Created on         : 26/01/2024
Last Modified Date : 17/02/2024
Reviewed by        : Sabapathi Shanmugam
Reviewed on        : 05/02/2024
 -->

<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service History</title>
</head>
<body>
<%
    
    ResultSet result = (ResultSet) request.getAttribute("result");
try {
        if (result!=null && result.next()) {
%>
        <table border="1">
            <thead>
                <tr>
                    <!-- Add column headers based on your ResultSet columns -->
                    <th>Service ID</th>
                    <th>User ID</th>
                    <th>Device</th>
                    <th>Service Type</th>
                    <th>Defect Type</th>
                    <th>Description</th>
                    <th>Address</th>
                    <th>Service Status</th>
                    <th>Payment Status</th>
                </tr>
            </thead>
            <tbody>
<%
            // Process the ResultSet and display the data
            do {
%>
                <tr>
                    <td><%= result.getString("serviceid") %></td>
                    <td><%= result.getString("userid") %></td>
					<td><%= result.getString("devicetype") %></td>
					<td><%= result.getString("defecttype") %></td>
					<td><%= result.getString("description") %></td>
					<td><%= result.getString("address") %></td>
					<td><%= result.getString("servicestatus") %></td>
					<td><%= result.getString("paymentstatus") %></td>
                </tr>
<%
            } while (result.next());
%>
            </tbody>
        </table>
<%
    } else {
%>
        <p>No data available.</p>
<%
        }
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle SQLException appropriately
    }
%>



</body>
</html>