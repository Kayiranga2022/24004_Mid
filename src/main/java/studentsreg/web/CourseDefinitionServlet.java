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
import studentsreg.dao.CourseDefinitionDao;
//import studentsreg.dao.SemesterDao;
import studentsreg.model.Course;
import studentsreg.model.CourseDefinition;
import studentsreg.model.Semester;
import studentsreg.util.HibernateUtilCourseDefinition;

@WebServlet(urlPatterns = { "/insertcoursedefinition", "/listcoursedefinitions", "/newcoursedefinition", "/deletecoursedefinition", "/editcoursedefinition",
"/updatecoursedefinition" })
public class CourseDefinitionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CourseDefinitionDao courseDefinitionDao;
    private CourseDao courseDao;

    @Override
    public void init() throws ServletException {
        super.init();
        courseDefinitionDao = new CourseDefinitionDao();
        courseDao = new CourseDao();
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

        try (Session session = HibernateUtilCourseDefinition.getSessionFactory().openSession()) {
            switch (action) {
                case "/newcoursedefinition":
                    showNewForm(request, response);
                    break;
                case "/insertcoursedefinition":
                    insertCourseDefinition(request, response, session);
                    break;
                case "/editcoursedefinition":
                    showEditForm(request, response, session);
                    break;
                case "/updatecoursedefinition":
                    updateCourseDefinition(request, response, session);
                    break;
                default:
                    listCourseDefinitions(request, response, session);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing the request.");
        }
    }

    private void listCourseDefinitions(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
        List<CourseDefinition> listCourseDefinitions = courseDefinitionDao.findAllCourseDefinitions(session);
        request.setAttribute("listCourseDefinitions", listCourseDefinitions);
        RequestDispatcher dispatcher = request.getRequestDispatcher("CourseDefinition-List.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("CourseDefinition.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
        String courseDefinitionIdStr = request.getParameter("courseDefinitionId");
        if (courseDefinitionIdStr == null || courseDefinitionIdStr.isEmpty()) {
            // Handle missing courseDefinitionId parameter
            response.sendRedirect("error.jsp");
            return;
        }

        
          UUID  courseDefinitionId = UUID.fromString(courseDefinitionIdStr);
          
          // Find the courser based on the entered ID
          Course course = courseDao.getCourseById(courseDefinitionId, session);

        
          // Handle non-existent semester
          if (course == null) {
              // You can choose to handle this in different ways:
              // - Display an error message indicating invalid semester ID
              response.sendRedirect("error.jsp?message=Course+not+found");
              return;
          }
        CourseDefinition existingCourseDefinition = courseDefinitionDao.findCourseDefinitionById(courseDefinitionId, session);
        if (existingCourseDefinition == null) {
            // Handle non-existent course definition
            response.sendRedirect("error.jsp");
            return;
        }

        request.setAttribute("courseDefinition", existingCourseDefinition);

        // Additional attributes as needed for dropdowns or other UI components

        RequestDispatcher dispatcher = request.getRequestDispatcher("CourseDefinition.jsp");
        dispatcher.forward(request, response);
    }

    private void insertCourseDefinition(HttpServletRequest request, HttpServletResponse response, Session session)
    	    throws IOException {
    	    // Retrieve course definition details from request parameters
    	    String courseDefinitionCode = request.getParameter("courseDefinitionCode"); // Use "courseCode"
    	    String courseDefinitionDescription = request.getParameter("courseDefinitionDescription");
    	    String courseIdStr = request.getParameter("courseId"); // Retrieve courseId

        // Additional parameters as needed
    	    
    	    UUID courseId = UUID.fromString(courseIdStr);

    	   Course course = courseDao.getCourseById(courseId, session);
    	   
    	// Handle non-existent semester
           if (course == null) {
               // You can choose to handle this in different ways:
               // - Display an error message indicating invalid semester ID
               response.sendRedirect("error.jsp?message=Course+not+found");
               return;
           }

        // Create a new CourseDefinition object with retrieved details
        CourseDefinition newCourseDefinition = new CourseDefinition(courseDefinitionCode, courseDefinitionDescription, course);
        // You need to handle setting the Course object based on your system design

        courseDefinitionDao.saveCourseDefinition(newCourseDefinition, session);

        // Redirect to the course definition list page
        response.sendRedirect("listcoursedefinitions");
    }

    private void updateCourseDefinition(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        // Similar to insertCourseDefinition method, implement as needed
        // This method updates an existing course definition
    }
}
