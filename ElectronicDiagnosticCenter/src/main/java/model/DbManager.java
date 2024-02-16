package model;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Servlet implementation class DbManager
 */
public class DbManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String dburl = "jdbc:mysql://localhost:3306/cdcenterdb";
	String name = "root";
	String pass = "Aspire@123";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DbManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public static Connection connection(HttpServletRequest request, HttpServletResponse response) {
    	try 
    	{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cdcenterdb", "root", "Aspire@123");
    		
    	}
    	catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected Connection initializeConnection(String dburl, String name, String pass)
	{
		 try {
			 Connection connection = DriverManager.getConnection(dburl, name, pass);
			 return connection;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}
	protected boolean insertuserdetails(String userid, String username, String password, String email) {
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			 String sqlstatement = "insert into userdetails values(?,?,?,?);";
			 Connection connection = initializeConnection(dburl, name, pass);
			 
			 try {
				
						// TODO: handle exception
			}
			 finally {
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
		
		
	}
}
