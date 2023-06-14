package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;
	public static  Connection getConn() {
		
		try {
//			com.mysql.cj.jdbc.Driver
//			Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nuoc_hoa-app","root","ngothitrangnhung");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
}
