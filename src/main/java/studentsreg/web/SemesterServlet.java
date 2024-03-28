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

import studentsreg.dao.SemesterDao;
import studentsreg.model.Semester;
import studentsreg.util.HibernateUtilSemester;

@WebServlet(urlPatterns = { "/insertsemester", "/listsemester", "/newsemester", "/deletesemester", "/editsemester",
        "/updatesemester" })
public class SemesterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private SemesterDao semesterDao;

    @Override
    public void init() throws ServletException {
        super.init();
        semesterDao = new SemesterDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try (Session session = HibernateUtilSemester.getSessionFactory().openSession()) {
            switch (action) {
                case "/newsemester":
                    showNewForm(request, response);
                    break;
                case "/insertsemester":
                    insertSemester(request, response, session);
                    break;
                case "/deletesemester":
                    deleteSemester(request, response, session);
                    break;
                case "/editsemester":
                    showEditForm(request, response, session);
                    break;
                case "/updatesemester":
                    updateSemester(request, response, session);
                    break;
                default:
                    listSemester(request, response, session);
                    break;
            }
        }
    }

    private void listSemester(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
        List<Semester> listSemester = semesterDao.getAllSemesters(session);
        request.setAttribute("listSemester", listSemester);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Semester-List.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Semester.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response, Session session)
            throws ServletException, IOException {
        String semesterIdStr = request.getParameter("semesterId");
        UUID semesterId = UUID.fromString(semesterIdStr);
        Semester existingSemester = semesterDao.getSemesterById(semesterId, session);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Semester.jsp");
        request.setAttribute("semester", existingSemester);
        dispatcher.forward(request, response);
    }

    private void insertSemester(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        String semesterName = request.getParameter("semesterName");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        Semester newSemester = new Semester(semesterName, startDate, endDate);
        semesterDao.saveSemester(newSemester, session);
        response.sendRedirect("listsemester"); // Corrected URL
    }

    private void updateSemester(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        String semesterIdStr = request.getParameter("semesterId");
        UUID semesterId = UUID.fromString(semesterIdStr);
        String semesterName = request.getParameter("semesterName");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        Semester newSemester = new Semester(semesterId, semesterName, startDate, endDate); // Fixed constructor
        semesterDao.updateSemester(newSemester, session);
        response.sendRedirect("listsemester"); // Corrected URL
    }

    private void deleteSemester(HttpServletRequest request, HttpServletResponse response, Session session)
            throws IOException {
        String semesterIdStr = request.getParameter("semesterId");
        UUID semesterId = UUID.fromString(semesterIdStr);
        semesterDao.deleteSemester(semesterId, session);
        response.sendRedirect("listsemester"); // Corrected URL
    }
}
