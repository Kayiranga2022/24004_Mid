package studentsreg.web;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;


import studentsreg.dao.TeacherDao;
import studentsreg.model.Course;
import studentsreg.model.Qualification;
import studentsreg.model.Teacher;

@WebServlet(urlPatterns = { "/insertteacher", "/listeachers", "/newteacher", "/deleteteacher", "/editteacher",
"/updateteacher" })
public class TeacherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private TeacherDao teacherDao;

    @Override
    public void init() throws ServletException {
        super.init();
        // Initialize Hibernate SessionFactory
        SessionFactory sessionFactory = studentsreg.util.HibernateUtilTeacher.getSessionFactory();
        teacherDao = new TeacherDao(sessionFactory);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String courseIdString = request.getParameter("courseId");
            String qualificationString = request.getParameter("qualification");

            // Parse courseId to UUID
            UUID courseId = UUID.fromString(courseIdString);

            // Parse qualification to enum
            Qualification qualification = Qualification.valueOf(qualificationString);

            // Create a Course object with the provided courseId
            Course course = new Course();
            course.setCourseId(courseId);

            // Create a Teacher object
            Teacher teacher = new Teacher(firstName, lastName, course);
            teacher.setQualification(qualification);

            // Save the teacher using DAO
            teacherDao.saveOrUpdateTeacher(teacher);

            // Redirect to a success page
            response.sendRedirect(request.getContextPath() + "/Teachers-List.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page if an exception occurs
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }
}
