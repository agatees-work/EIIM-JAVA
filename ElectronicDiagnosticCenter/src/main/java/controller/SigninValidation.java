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
import java.sql.ResultSet;

/**
 * Servlet implementation class SigninValidation
 */
public class SigninValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SigninValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cdcenterdb", "root", "Aspire@123");
            String name = request.getParameter("username");
            String password = request.getParameter("password");
 
            PreparedStatement statement = connection.prepareStatement("SELECT userid FROM userdetails WHERE username=? AND password=?");
            
            statement.setString(1, name);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
            	String userid = rs.getString("userid");
            	HttpSession session = request.getSession();
    			session.setAttribute("userid",userid);
            	response.sendRedirect("/ElectronicDiagnosticCenter/main.jsp");
            } 
            else {
            	request.setAttribute("errorMessage", "Invalid username or password");
                // Forward to the login page to display the error
                RequestDispatcher dispatcher = request.getRequestDispatcher("SignIn.jsp");
                dispatcher.forward(request, response);
                response.sendRedirect("/ElectronicDiagnosticCenter/SignIn.jsp");
            }
            connection.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        
		
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}