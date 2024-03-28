package studentsreg.dao;

import java.util.List;
import java.util.UUID;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import studentsreg.model.Teacher;

public class TeacherDao {

    private final SessionFactory sessionFactory;

    public TeacherDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveOrUpdateTeacher(Teacher teacher) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.saveOrUpdate(teacher);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public Teacher getTeacherById(UUID teacherId) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Teacher.class, teacherId);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Teacher> getAllTeachers() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("FROM Teacher", Teacher.class).list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void deleteTeacher(Teacher teacher) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.delete(teacher);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
