package studentsreg.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import studentsreg.dao.StudentDao;
import studentsreg.model.Student;
import studentsreg.util.HibernateUtil;

@WebServlet(urlPatterns = { "/insertstudent", "/liststudent", "/newstudent", "/deletestudent", "/editstudent",
"/updatestudent" })
public class StudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private StudentDao studentDao;

    @Override
    public void init() throws ServletException {
        super.init();
        studentDao = new StudentDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            switch (action) {
                case "/newstudent":
                    showNewForm(request, response);
                    break;
                case "/insertstudent":
                    insertStudent(request, response, session);
                    break;
                case "/deletestudent":
                    deleteStudent(request, response, session);
                    break;
                case "/editstudent":
                    showEditForm(request, response, session);
                    break;
                case "/updatestudent":
                    updateStudent(request, response, session);
                    break;
                default:
                    listStudent(request, response, session);
                    break;
            }
        }
    }

    private void listStudent(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
        List<Student> listStudent = studentDao.getAllStudents(session);
        request.setAttribute("listStudent", listStudent);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Students-List.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("id"));
    Student existingStudent = studentDao.getStudentById(id, session);
    RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
    request.setAttribute("student", existingStudent);
    dispatcher.forward(request, response);
}

    private void insertStudent(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        String studentId = request.getParameter("studentId");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        Student newStudent = new Student(studentId, firstName, lastName, dob);
        studentDao.saveStudent(newStudent, session);
        response.sendRedirect("liststudent");
    }

    private void updateStudent(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        // Retrieve parameters from the request
        String studentIdStr = request.getParameter("studentId");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");

        // Convert studentIdStr to an integer
        int id;
        try {
            id = Integer.parseInt(studentIdStr);
        } catch (NumberFormatException e) {
            // Handle invalid student ID
            response.sendRedirect("error.jsp?message=Invalid+student+id");
            return;
        }

        // Create a new Student object with the updated information
        Student student = new Student(id, studentIdStr, firstName, lastName, dob);

        // Update the student using the DAO
        studentDao.updateStudent(student, session);

        // Redirect to the liststudent page
        response.sendRedirect("liststudent");
    }

    
    private void deleteStudent(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        String studentIdStr = request.getParameter("id");
        Integer id = null;
        try {
            id = Integer.valueOf(studentIdStr);
        } catch (NumberFormatException e) {
            // Handle the case where studentId cannot be parsed to an integer
            response.sendRedirect("error.jsp?message=Invalid+student+id");
            return;
        }
        if (id != null) {
            studentDao.deleteStudent(id, session);
            response.sendRedirect("liststudent"); // Redirect only if deletion is successful
        } else {
            // Handle the case where studentId is null or empty string
            response.sendRedirect("error.jsp?message=Missing+student+id");
        }
    }


}
