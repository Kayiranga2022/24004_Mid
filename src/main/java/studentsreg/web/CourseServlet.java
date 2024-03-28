package studentsreg.web;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

import studentsreg.dao.CourseDao;
import studentsreg.dao.SemesterDao;
import studentsreg.model.Course;
import studentsreg.model.Semester;
import studentsreg.util.HibernateUtilCourse;



@WebServlet(urlPatterns = { "/insertcourse", "/listcourses", "/newcourse", "/deletecourse", "/editcourse",
"/updatecourse" })
public class CourseServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CourseDao courseDao;
    private SemesterDao semesterDao;

    @Override
    public void init() throws ServletException {
        super.init();
        courseDao = new CourseDao();
        semesterDao = new SemesterDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            doGet(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing the request.");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try (Session session = HibernateUtilCourse.getSessionFactory().openSession()) {
            switch (action) {
                case "/newcourse":
                    showNewForm(request, response);
                    break;
                case "/insertcourse":
                    insertCourse(request, response, session);
                    break;
                case "/editcourse":
                    showEditForm(request, response, session);
                    break;
                case "/updatecourse":
                    updateCourse(request, response, session);
                    break;
                default:
                    listCourses(request, response, session);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing the request.");
        }
    }

    private void listCourses(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
        List<Course> listCourse = courseDao.getAllCourses(session);
        request.setAttribute("listCourse", listCourse);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Course-List.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Course.jsp");
        dispatcher.forward(request, response);
    }


    private void showEditForm(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
    String courseIdStr = request.getParameter("courseId");
    if (courseIdStr == null || courseIdStr.isEmpty()) {
        // Handle missing courseId parameter
        response.sendRedirect("error.jsp");
        return;
    }

    UUID courseId = null;
    try {
        courseId = UUID.fromString(courseIdStr);
    } catch (IllegalArgumentException e) {
        // Handle invalid UUID format
        response.sendRedirect("error.jsp");
        return;
    }

    Course existingCourse = courseDao.getCourseById(courseId, session);
    if (existingCourse == null) {
        // Handle non-existent course
        response.sendRedirect("error.jsp");
        return;
    }

    request.setAttribute("course", existingCourse);

    List<Semester> semesters = semesterDao.getAllSemesters(session);
    request.setAttribute("semesters", semesters);

    RequestDispatcher dispatcher = request.getRequestDispatcher("Course.jsp");
    dispatcher.forward(request, response);
}
    
    
    

 
    private void insertCourse(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        // Retrieve course details from request parameters
        String enteredCourseCode = request.getParameter("courseCode");
        String enteredCourseName = request.getParameter("courseName");
        String enteredSemesterIdStr = request.getParameter("semesterId");

        // Validation (optional): Check if any of the required fields are empty
        if (enteredCourseCode == null || enteredCourseCode.isEmpty() ||
                enteredCourseName == null || enteredCourseName.isEmpty() ||
                enteredSemesterIdStr == null || enteredSemesterIdStr.isEmpty()) {
            // Handle missing course details
            response.sendRedirect("error.jsp?message=Missing+course+details");
            return;
        }

        // Use enteredSemesterIdStr directly as a UUID (assuming it's already a valid string)
        UUID enteredSemesterId = UUID.fromString(enteredSemesterIdStr);

        // Find the semester based on the entered ID
        Semester semester = semesterDao.getSemesterById(enteredSemesterId, session);

        // Handle non-existent semester
        if (semester == null) {
            // You can choose to handle this in different ways:
            // - Display an error message indicating invalid semester ID
            response.sendRedirect("error.jsp?message=Semester+not+found");
            return;
        }

        // Create a new Course object with retrieved details
        Course newCourse = new Course(enteredCourseCode, enteredCourseName, semester);

        courseDao.saveCourse(newCourse, session);

        // Redirect to the course list page
        response.sendRedirect("listcourses");
    }


    private void updateCourse(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        String courseIdStr = request.getParameter("courseId");
        UUID courseId = null;
        try {
            courseId = UUID.fromString(courseIdStr);
        } catch (IllegalArgumentException e) {
            // Handle invalid UUID format
            e.printStackTrace();
        }

        Course existingCourse = null;
        if (courseId != null) {
            existingCourse = courseDao.getCourseById(courseId, session);
        }

        if (existingCourse == null) {
            // Handle non-existent course or invalid ID
            // Redirect or display error message
            response.sendRedirect("error.jsp");
            return;
        }

        String courseCode = request.getParameter("courseCode");
        String courseName = request.getParameter("courseName");

        UUID semesterId = null;
        String semesterIdStr = request.getParameter("semesterId");
        try {
            semesterId = UUID.fromString(semesterIdStr);
        } catch (IllegalArgumentException e) {
            // Handle invalid UUID format
            e.printStackTrace();
        }

        existingCourse.setCourseCode(courseCode);
        existingCourse.setCourseName(courseName);
       // existingCourse.setSemester(semesterDao.getSemesterById(semesterId, session));
        courseDao.updateCourse(existingCourse, session);
        response.sendRedirect("listcourses");
    }
}
