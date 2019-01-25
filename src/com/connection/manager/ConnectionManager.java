package com.connection.manager;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionManager {

	public static Connection getConnection() throws SQLException, IOException {
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream fis = classLoader.getResourceAsStream("configuration.properties");
		//FileInputStream fis = new FileInputStream("d:\\configuration.properties"); for local drive file 
		Properties ptr = new Properties();
		ptr.load(fis);
		final String JDBC_DRIVER =ptr.getProperty("dbdriver");
		final String DB_URL = ptr.getProperty("dburl");
		final String User = ptr.getProperty("dbuser");
		final String Password = ptr.getProperty("dbpass");
		try {
			try {
				Class.forName(JDBC_DRIVER); 
			} catch (ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			Connection conn = DriverManager.getConnection(DB_URL, User, Password);
			System.out.println("Connected to DB");
			return conn;
		} catch (SQLException e) {
			System.out.println("Connection Failed!");
			e.printStackTrace();
			throw e;
		}
	}
	
	
	
}