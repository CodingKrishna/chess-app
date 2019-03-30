package com.regnant.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Retrivedata_from_db {

	public static List<userdata_objects> retrive_user_data() throws ClassNotFoundException, SQLException {

		Connection conn = DB_Connection.dbconeectioin();
		Statement stmt = conn.createStatement();

		List<userdata_objects> li = new ArrayList();

		ResultSet rs = stmt.executeQuery("select * from chessdb.particpants where adminstatus is NULL;");

		while (rs.next()) {
			userdata_objects uobj = new userdata_objects();
			uobj.setUname(rs.getString(1));
			uobj.setEmail(rs.getString(2));
			uobj.setMobile(rs.getString(3));
			li.add(uobj);

		}

		return li;

	}

}
