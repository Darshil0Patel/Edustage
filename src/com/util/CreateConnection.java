package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class CreateConnection {

	public static Connection GetConnection()
	{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edustage","root","");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return conn;
	}
	
}
