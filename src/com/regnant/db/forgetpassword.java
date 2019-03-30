package com.regnant.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class forgetpassword {

	public static void changepassword(String email, String newpassword) throws ClassNotFoundException, SQLException {
		Connection conn = DB_Connection.dbconeectioin();
		
		System.out.println("in forget password");
		PreparedStatement pst = conn.prepareStatement("update chessdb.particpants set passwor=? where email = ?;");
		pst.setString(1, newpassword);
		pst.setString(2, email);
		pst.executeUpdate();
	
		
	}
	
}
