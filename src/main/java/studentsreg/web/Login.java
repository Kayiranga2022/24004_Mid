package studentsreg.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        HttpSession session= request.getSession();
         RequestDispatcher dispatcher = null;
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/24004_MID?useSSL=false", "root", "");
            PreparedStatement pst = con.prepareStatement("select * from users where email = ? and password = ?");
            pst.setString(1, email);
            pst.setString(2, password);
            

            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                //HttpSession session = request.getSession();
                session.setAttribute("name", rs.getString("email"));
              //response.sendRedirect("index.jsp");
            	// Retrieve the user role from the result set
              

               // session.setAttribute("name", rs.getString("email"));
                String role = rs.getString("role");  // Assuming the "role" column exists in the users table

                if ("admin".equalsIgnoreCase(role)) {
                    response.sendRedirect("adminPanel.jsp"); // Redirect to admin area
                } else if ("student".equalsIgnoreCase(role)) {
                    response.sendRedirect("studentPanel.jsp"); // Redirect to student area
                }
                else if ("teacher".equalsIgnoreCase(role)) {
                    response.sendRedirect("teacherPanel.jsp"); // Redirect to teacher area
                }
            } else {
                request.setAttribute("status", "failed");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions properly
            // You can forward to an error page or handle it based on your application's requirements
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
