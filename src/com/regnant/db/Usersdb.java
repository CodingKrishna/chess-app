package com.regnant.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Usersdb {
	public void addUser(String uname, String email, String mobile, String password)
			throws ClassNotFoundException, SQLException {

		Connection conn = DB_Connection.dbconeectioin();
		PreparedStatement pst = conn
				.prepareStatement("INSERT INTO chessdb.particpants (uname, email, mobile,password) VALUES (?,?,?,?);");
		System.out.println(uname + email + mobile + password);
		pst.setString(1, uname);
		pst.setString(2, email);
		pst.setString(3, mobile);
		pst.setString(4, password);
		pst.executeUpdate();
	}

	public boolean signin(String email, String password) throws ClassNotFoundException, SQLException {
		Connection conn = DB_Connection.dbconeectioin();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select \"passwor\" from chessdb.particpants where email='" + email + "';");
		String p = "";
		while (rs.next()) {
			p = rs.getString(1);
		}
		if (p.equals(password)) {
			return true;
		} else {
			return false;
		}

	}

	public boolean signadmin(String email) throws SQLException, ClassNotFoundException {

		Connection conn = DB_Connection.dbconeectioin();

		Statement stmt = conn.createStatement();

		ResultSet rs = stmt.executeQuery("select adminstatus from chessdb.particpants where email='"+email+"';");

		String p = "";
		while (rs.next()) {
			p = rs.getString(1);
		}
		if (p.equals("admin")) {
			return true;
		} else {
			return false;
		}

	}

}
