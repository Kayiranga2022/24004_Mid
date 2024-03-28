package studentsreg.web;



import studentsreg.dao.StudentRegistrationDao;
import studentsreg.model.Semester;
import studentsreg.model.Student;
import studentsreg.model.StudentRegistration;
import studentsreg.util.HibernateUtilRegistration; // Import HibernateUtil or your equivalent

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

@WebServlet("/insertStudentRegistration")
public class StudentRegistrationServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final StudentRegistrationDao studentRegistrationDao;

    public StudentRegistrationServlet() {
        this.studentRegistrationDao = new StudentRegistrationDao(HibernateUtilRegistration.getSessionFactory());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve form data
            String registrationCode = request.getParameter("registrationCode");
            Date registrationDate = new Date(); // Current date
            
            // Validate and parse UUIDs
            UUID studentId = validateAndParseUUID(request.getParameter("studentId"));
            UUID semesterId = validateAndParseUUID(request.getParameter("semesterId"));

            // Create Student object
            Student student = new Student();
            student.setStudentId(studentId.toString()); // Convert UUID to String

            // Create Semester object
            Semester semester = new Semester();
            semester.setSemesterId(semesterId);
            
            // Create StudentRegistration object
            StudentRegistration studentRegistration = new StudentRegistration();
            studentRegistration.setRegistrationId(UUID.randomUUID()); // Generate a new UUID for registration
            studentRegistration.setRegistrationCode(registrationCode);
            studentRegistration.setRegistrationDate(registrationDate);
            studentRegistration.setStudent(student); // Set Student object
            studentRegistration.setSemester(semester); // Set Semester object

            // Save or update StudentRegistration
            studentRegistrationDao.saveOrUpdateStudentRegistration(studentRegistration);

            // Redirect to a success page
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page
            response.sendRedirect("error.jsp");
        }
    }

    // Validate and parse UUID from input string
    private UUID validateAndParseUUID(String uuidStr) {
        try {
            // Attempt to parse UUID
            return UUID.fromString(uuidStr);
        } catch (IllegalArgumentException e) {
            // Invalid UUID format
            e.printStackTrace();
            return null;
        }
    }
}
