//Title              : ElectronicDiagnosticCenter
//Author             : Agateeswaran K
//Created on         : 26/01/2024
//Last Modified Date : 19/02/2024
//Reviewed by        : Sabapathi Shanmugam
//Reviewed on        : 05/02/2024
	
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class ServiceHistory
 */
public class ServiceHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceHistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dburl = "jdbc:mysql://localhost:3306/cdcenterdb";
		String name = "root";
		String pass = "Aspire@123";
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(dburl, name, pass);
			try {
				 PreparedStatement statement = connection.prepareStatement("SELECT * FROM servicerequest WHERE userid=?;");
		         statement.setString(1, userid);
		         ResultSet result = statement.executeQuery();
		         session.setAttribute("result",result);
	             response.sendRedirect("servicehistory.jsp");
			} 
			finally {
				connection.close();
			}
		} catch (Exception e) {
			pw.println(e);
		}
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
