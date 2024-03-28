package studentsreg.dao;

import java.util.List;
import java.util.UUID;

import org.hibernate.Session;
import org.hibernate.Transaction;

import studentsreg.model.Course;
import studentsreg.model.Semester;

public class CourseDao {

    public void saveCourse(Course course, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            session.save(course);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void updateCourse(Course course, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            session.update(course);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void deleteCourse(UUID courseId, Session session) {
        Transaction transaction = session.beginTransaction();
        try {
            Course course = session.get(Course.class, courseId);
            if (course != null) {
                session.delete(course);
                System.out.println("Course is deleted");
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public Course getCourseById(UUID courseId, Session session) {
        Transaction transaction = session.beginTransaction();
        Course course = null;
        try {
            course = session.get(Course.class, courseId);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return course;
    }

    @SuppressWarnings("unchecked")
    public List<Course> getAllCourses(Session session) {
        Transaction transaction = session.beginTransaction();
        List<Course> listOfCourses = null;
        try {
            listOfCourses = session.createQuery("from Course").getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfCourses;
    }

    // Method to get all semesters
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

    // Method to get semester by ID
    public Semester getSemesterById(UUID semesterId, Session session) {
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

}
