package studentsreg.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import studentsreg.model.StudentRegistration;
import java.util.UUID;

public class StudentRegistrationDao {
    private final SessionFactory sessionFactory;

    public StudentRegistrationDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveOrUpdateStudentRegistration(StudentRegistration studentRegistration) {
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.saveOrUpdate(studentRegistration);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    public StudentRegistration getStudentRegistrationById(UUID registrationId) {
        Session session = sessionFactory.openSession();
        try {
            return session.get(StudentRegistration.class, registrationId);
        } finally {
            session.close();
        }
    }

    public void deleteStudentRegistration(UUID registrationId) {
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            StudentRegistration studentRegistration = session.get(StudentRegistration.class, registrationId);
            if (studentRegistration != null) {
                session.delete(studentRegistration);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
}
