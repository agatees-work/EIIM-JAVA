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
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class SignUpValidation
 */
public class SignUpValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		PrintWriter pw = response.getWriter();
		String userid = generateUserID(username, phone);
		String dburl = "jdbc:mysql://localhost:3306/cdcenterdb";
		String name = "root";
		String pass = "Aspire@123";
		
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			 String sqlstatement = "insert into userdetails values(?,?,?,?);";
			 Connection connection = DriverManager.getConnection(dburl, name, pass);
			try {
				PreparedStatement statement = connection.prepareStatement(sqlstatement);
				 statement.setString(1, userid);
		         statement.setString(2, username);
		         statement.setString(3, password);
		         statement.setString(4, email);
		         int rowsAffected = statement.executeUpdate();
		         if (rowsAffected >0)
		         {	
		        	 request.setAttribute("Message", "User has been added successfully!");
		        	 response.sendRedirect("SignIn.jsp");
		        	 return;
		         }

			}
			
			
	         finally {
	        	 connection.close();	
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
			request.setAttribute("Message", e);
				pw.println("userid:"+userid);
			 	pw.println("error catch "+ e);
            	RequestDispatcher dispatcher = request.getRequestDispatcher("SignUp.jsp");
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

	public String generateUserID(String username, String phoneNumber) {
	   username = username.toUpperCase();
       String userid ="CUS"+ username.substring(0,3)+ phoneNumber.substring(0,4);
       return userid;
    }
	public String validUserInput(String username, String phoneNumber) {
		   username = username.toUpperCase();
	       String userid ="CUS"+ username.substring(0,3)+ phoneNumber.substring(0,4);
	       return userid;
	    }
	
}
