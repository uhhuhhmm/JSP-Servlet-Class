package ulti;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
			
			Connection conn = null;		
			
			try {
				Context init = new InitialContext();
				DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
				conn = ds.getConnection();
			}catch(Exception e){
				e.printStackTrace();
			}
			return conn;
	}


//select을 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
// DML(insert, update, delete) 작업을 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
