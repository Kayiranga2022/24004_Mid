package studentsreg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import studentsreg.model.Student;

public class StudentDao {

    public void saveStudent(Student student, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            session.save(student);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void updateStudent(Student student, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            session.update(student);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void deleteStudent(int id, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            Student student = session.get(Student.class, id);
            if (student != null) {
                session.delete(student);
                System.out.println("Student is deleted");
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public Student getStudentById(int id, Session session) {
        Transaction transaction = session.beginTransaction();
        Student student = null;
        try {
            student = session.get(Student.class, id);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return student;
    }

    @SuppressWarnings("unchecked")
    public List<Student> getAllStudents(Session session) {
        Transaction transaction = session.beginTransaction();
        List<Student> listOfStudents = null;
        try {
            listOfStudents = session.createQuery("from Student").getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfStudents;
    }
}
