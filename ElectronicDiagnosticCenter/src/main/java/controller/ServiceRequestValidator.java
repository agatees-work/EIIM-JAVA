//Title              : ElectronicDiagnosticCenter
//Author             : Agateeswaran K
//Created on         : 26/01/2024
//Last Modified Date : 19/02/2024
//Reviewed by        : Sabapathi Shanmugam
//Reviewed on        : 05/02/2024
		
package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

public class ServiceRequestValidator extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    private static final int SERVICE_ID_LENGTH = 10;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceRequestValidator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String device = request.getParameter("deviceSelection");
		String servicetype = request.getParameter("serviceSelection");
		String address = request.getParameter("address");
		String description = request.getParameter("description");
		String dburl = "jdbc:mysql://localhost:3306/cdcenterdb";
		String name = "root";
		String pass = "Aspire@123";
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		String serviceid = generateServiceId();
		
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			 String sqlstatement = "insert into servicerequest values(?,?,?,?,?,?,?,?);";
			 Connection connection = DriverManager.getConnection(dburl, name, pass);
			try {
					PreparedStatement statement = connection.prepareStatement(sqlstatement);
					statement.setString(1,serviceid);
					statement.setString(2,userid);
					statement.setString(3,device);
					statement.setString(4,servicetype);
					statement.setString(5,description);
					statement.setString(6,address);
					statement.setString(7,"Initiated");
					statement.setString(8,"pending");
					
					int rowsAffected = statement.executeUpdate();
			         if (rowsAffected >0)
			         {
			        	 request.setAttribute("Message", "You have successfully risen a Service Request");
			        	 response.sendRedirect("main.jsp");
			        	 return;
			         }
			      
			}
			
	         finally {
	        	 connection.close();	
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
				request.setAttribute("errorMessage", e);
            	RequestDispatcher dispatcher = request.getRequestDispatcher("service.jsp");
            	dispatcher.forward(request, response);
        }
         
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	 public static String generateServiceId() {
	        StringBuilder serviceId = new StringBuilder();

	        serviceId.append(System.currentTimeMillis());

	        // Append random characters to reach the desired length
	        Random random = new Random();
	        while (serviceId.length() < SERVICE_ID_LENGTH) {
	            int index = random.nextInt(CHARACTERS.length());
	            serviceId.append(CHARACTERS.charAt(index));
	        }

	        // Trim to the desired length
	        return serviceId.substring(0, SERVICE_ID_LENGTH);
	    }
}
