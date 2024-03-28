package studentsreg.web;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;

import studentsreg.dao.AcademicUnitDao;
import studentsreg.model.AcademicUnit;
import studentsreg.model.EAcademicUnit;
import studentsreg.util.HibernateUtilAcademicUnit;

@WebServlet("/insertAcademicUnit")
public class AcademicUnitServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private AcademicUnitDao academicUnitDao;

    @Override
    public void init() throws ServletException {
        super.init();
        // Initialize Hibernate SessionFactory
        SessionFactory sessionFactory = HibernateUtilAcademicUnit.getSessionFactory();
        academicUnitDao = new AcademicUnitDao(sessionFactory);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Retrieve parameters from the request
            String academicUnitCode = request.getParameter("academicUnitCode");
            if (academicUnitCode == null || academicUnitCode.isEmpty()) {
                // Handle empty academicUnitCode
                throw new Exception("Academic Unit Code is required");
            }

            String academicUnitName = request.getParameter("academicUnitName");
            if (academicUnitName == null || academicUnitName.isEmpty()) {
                // Handle empty academicUnitName
                throw new Exception("Academic Unit Name is required");
            }

            String academicUnitTypeName = request.getParameter("academicUnitType");
            String parentIdString = request.getParameter("parentId");

            // Parse academic unit type to enum
            EAcademicUnit academicUnitType = EAcademicUnit.valueOf(academicUnitTypeName);

            // Parse parentId to UUID (handle potential parsing exception)
            UUID parentId = null;
            if (parentIdString != null && !parentIdString.isEmpty()) {
                parentId = UUID.fromString(parentIdString);
            }

            // Create an AcademicUnit object
            AcademicUnit academicUnit = new AcademicUnit();
            academicUnit.setAcademicUnitId(UUID.randomUUID()); // Generate UUID for academic unit
            academicUnit.setAcademicUnitCode(academicUnitCode);
            academicUnit.setAcademicUnitName(academicUnitName);
            academicUnit.setAcademicUnitType(academicUnitType);

            // Set parentId if available
            if (parentId != null) {
                AcademicUnit parentUnit = new AcademicUnit();
                parentUnit.setAcademicUnitId(parentId);
                academicUnit.setParentId(parentUnit);
            }

            // Save the academic unit using DAO
            academicUnitDao.saveAcademicUnit(academicUnit);

            // Redirect to a success page
            response.sendRedirect(request.getContextPath() + "/success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page if an exception occurs
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }
}