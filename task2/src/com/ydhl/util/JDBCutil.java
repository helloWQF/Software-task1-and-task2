package com.ydhl.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCutil {

	private static final String QD = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/source_db?serverTimezone=GMT%2B8";
	private static final String USE = "root";
	private static final String PAS = "123456";

	static {
		try {
			Class.forName(QD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(URL, USE, PAS);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void close(ResultSet rs, PreparedStatement st, Connection con) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (st != null) {
				st.cancel();
			}
			if (con != null) {
				con.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
