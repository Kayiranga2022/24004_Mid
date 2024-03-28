package studentsreg.dao;

import java.util.List;
import java.util.UUID;

import org.hibernate.Session;
import org.hibernate.Transaction;

import studentsreg.model.Semester;

public class SemesterDao {

    public void saveSemester(Semester semester, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            session.save(semester);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void updateSemester(Semester semester, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            session.update(semester);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void deleteSemester(UUID semesterId, Session session) { // This method might need adjustment based on your implementation
        Transaction transaction = session.beginTransaction();
        try {
            Semester semester = session.get(Semester.class, semesterId); // Assuming you have a way to get semester by another identifier
            if (semester != null) {
                session.delete(semester);
                System.out.println("Semester is deleted");
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public Semester getSemesterById(UUID semesterId, Session session) { // Changed type to UUID
        Transaction transaction = session.beginTransaction();
        Semester semester = null;
        try {
            semester = session.get(Semester.class, semesterId);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return semester;
    }

    @SuppressWarnings("unchecked")
    public List<Semester> getAllSemesters(Session session) {
        Transaction transaction = session.beginTransaction();
        List<Semester> listOfSemesters = null;
        try {
            listOfSemesters = session.createQuery("from Semester").getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfSemesters;
    }
}