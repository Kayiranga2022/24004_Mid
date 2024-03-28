package studentsreg.util;

import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import studentsreg.model.AcademicUnit;

public class HibernateUtilAcademicUnit {

	  private static SessionFactory sessionFactory;

	  public static synchronized SessionFactory getSessionFactory() {
	    if (sessionFactory == null) {
	      try {
	        Configuration configuration = new Configuration();

	        // **Hibernate settings**
	        configuration.setProperty(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
	        configuration.setProperty(Environment.URL, "jdbc:mysql://localhost:3306/24004_mid?useSSL=false");
	        configuration.setProperty(Environment.USER, "root");
	        configuration.setProperty(Environment.PASS, "");
	        configuration.setProperty(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
	        configuration.setProperty(Environment.SHOW_SQL, "true");
	        configuration.setProperty(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
	        configuration.setProperty(Environment.HBM2DDL_AUTO, "update");

	        // Add annotated classes
	        configuration.addAnnotatedClass(AcademicUnit.class);

	        ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
	            .applySettings(configuration.getProperties()).build();
	        sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	      } catch (Exception e) {
	        throw new RuntimeException("Error creating SessionFactory: " + e.getMessage(), e);
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
