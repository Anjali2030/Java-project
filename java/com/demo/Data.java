package com.demo;
import java.sql.*;


public class Data {
	
	public static Connection getconnection() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/farming","root","Anjali@123");
		Statement st = cn.createStatement();
		return cn;
	
	}
}

	
