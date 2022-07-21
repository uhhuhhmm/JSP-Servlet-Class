package com.j.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.j.dto.EmployeesVO;

public class EmployeesDAO {
	private EmployeesDAO() {
		
	}
	
	private static EmployeesDAO instance = new EmployeesDAO();
	
	public static EmployeesDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Connection conn = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		return conn;
	}
	
	public int userCheck(String id, String pwd, String lev) {
	
		int result = 1;
		Connection conn = null;
		String sql = "SELECT * FROM EMPLOYEES WHERE id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(pwd.equals(rs.getString("pass"))) {
					if(lev.equals(rs.getString("lev"))) {
						result = 2;
						if(lev.equals("B")) {
							result = 3;
						}
					} else {
						result = 1; // 레벨 불일치
					}
				}else {
					result = 0; // 비번 불일치
				}
			}else {
				result = -1; // 아이디 불일치
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					pstmt.close();
			} catch (Exception e){
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public EmployeesVO getMember(String id) {
		EmployeesVO member = new EmployeesVO();
		String sql = "select * from employees where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member.setId(rs.getString("ID"));
				member.setPass(rs.getString("PASS"));
				member.setName(rs.getString("NAME"));
				member.setLev(rs.getString("LEV"));
				member.setEnter(rs.getDate("ENTER"));
				member.setGender(rs.getInt("GENDER"));
				member.setPhone(rs.getString("PHONE"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) 
					rs.close();
				if (pstmt != null) 
					pstmt.close();
				if (conn != null) 
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return member;
	}
	
	
	
	
	
	
	
	
	
	
	
}
