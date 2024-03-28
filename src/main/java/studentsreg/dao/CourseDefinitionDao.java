package studentsreg.dao;

import java.util.List;
import java.util.UUID;

import org.hibernate.Session;
import org.hibernate.Transaction;

import studentsreg.model.CourseDefinition;

public class CourseDefinitionDao {

    public void saveCourseDefinition(CourseDefinition courseDefinition, Session session) {
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(courseDefinition);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public CourseDefinition findCourseDefinitionById(UUID courseDefinitionId, Session session) {
        Transaction transaction = null;
        CourseDefinition courseDefinition = null;
        try {
            transaction = session.beginTransaction();
            courseDefinition = session.get(CourseDefinition.class, courseDefinitionId);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return courseDefinition;
    }

    @SuppressWarnings("unchecked")
    public List<CourseDefinition> findAllCourseDefinitions(Session session) {
        Transaction transaction = null;
        List<CourseDefinition> listOfDefinitions = null;
        try {
            transaction = session.beginTransaction();
            listOfDefinitions = session.createQuery("from CourseDefinition").getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfDefinitions;
    }

    // Additional methods can be implemented for specific needs (e.g., find by course code)
}
