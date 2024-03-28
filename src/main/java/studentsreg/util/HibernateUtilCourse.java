package studentsreg.util;

import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import studentsreg.model.Course;
import studentsreg.model.Semester;

public class HibernateUtilCourse {

    private static SessionFactory sessionFactory;

    public static synchronized SessionFactory getSessionFactory() {
        if (sessionFactory == null || sessionFactory.isClosed()) {
            try {
                Configuration configuration = new Configuration();

                // Hibernate settings
                Properties settings = new Properties();
                settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
                settings.put(Environment.URL, "jdbc:mysql://localhost:3306/24004_mid?useSSL=false");
                settings.put(Environment.USER, "root");
                settings.put(Environment.PASS, ""); // Password if needed
                settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
                settings.put(Environment.SHOW_SQL, "true");
                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

                configuration.setProperties(settings);
                configuration.addAnnotatedClass(Course.class);
                configuration.addAnnotatedClass(Semester.class);

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties()).build();
                System.out.println("Hibernate Java Config serviceRegistry created");
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            } catch (Exception e) {
                System.err.println("Error creating SessionFactory: " + e.getMessage());
                e.printStackTrace();
                // In case of exception, return null to indicate failure
                return null;
            }
        }
        return sessionFactory;
    }

    public static Session getSession() {
        // Ensure that sessionFactory is initialized before attempting to open a session
        if (sessionFactory == null) {
            sessionFactory = getSessionFactory();
        }
        return sessionFactory.openSession();
    }

    public static void closeSessionFactory() {
        if (sessionFactory != null) {
            sessionFactory.close();
        }
    }
}
