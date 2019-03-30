package com.regnant.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB_Connection {
	public static Connection dbconeectioin() throws ClassNotFoundException, SQLException {
		Class.forName("org.postgresql.Driver");
		Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/java", "postgres", "123456");
		return conn;
	}

}
