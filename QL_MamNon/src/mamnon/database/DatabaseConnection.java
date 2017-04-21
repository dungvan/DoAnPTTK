package mamnon.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {
	private static Connection conn = null;
	private static Statement stmt = null;

	public static Connection getConnection()
			throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/school?autoReconnect=true&useSSL=false";
		conn = DriverManager.getConnection(url, "root", "thanvu123");
		return conn;
	}
	
	public static ResultSet getResultSet(String sql) throws SQLException{
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		return rs;
	}

	public static void closeQuietly() {
		try {
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static void rollbackQuietly(Connection conn) {
		try {
			conn.rollback();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
