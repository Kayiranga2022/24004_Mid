package studentsreg.web;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	//	String id = request.getParameter("id");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		RequestDispatcher dispatcher =null;
	    Connection con = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/24004_MID?useSSL=false","root","");
			PreparedStatement pst = con.prepareStatement("insert into users(email,password,role) values(?,?,?)");
			
			//pst.setString(1, id);
			pst.setString(1, email);
			pst.setString(2, password);
			pst.setString(3, role);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("login.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		}
	}