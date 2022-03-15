package ma.eshop.eshopbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages = {"ma.eshop.eshopbackend.dto"})
@EnableTransactionManagement
public class HibernateConfig {
	private final static String DATABESE_URL = "jdbc:mysql://localhost:3306/eshop";
	private final static String DATABESE_DRIVER = "com.mysql.jdbc.Driver";
	private final static String DATABESE_DIALECT = "org.hibernate.dialect.MySQL8Dialect";
	private final static String DATABESE_USERNAME = "root";
	private final static String DATABESE_PASSWORD = "";
	
	@Bean
	public DataSource getDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName(DATABESE_DRIVER);
		dataSource.setUrl(DATABESE_URL);
		dataSource.setUsername(DATABESE_USERNAME);
		dataSource.setPassword(DATABESE_PASSWORD);
		return dataSource;
	}
	
	@Bean
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource);
		builder.addProperties(getHibernateProperties());
		builder.scanPackages("ma.eshop.eshopbackend.dto");
		return builder.buildSessionFactory();
	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", DATABESE_DIALECT);
		properties.put("hiernate.show_sql", "true");
		properties.put("hibernate.format_sql", "true");
		return properties;
	}
	
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

}
