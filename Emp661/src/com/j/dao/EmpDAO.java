package com.j.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.j.dto.EmpVO;

import ulti.DBManager;

public class EmpDAO {
	private EmpDAO() {
	}
	
	private static EmpDAO instance = new EmpDAO();
	
	public static EmpDAO getInstance() {
		return instance;
	}
	
	public List<EmpVO> selectAllBoards(){
		String sql = "select * from employees order by id desc";
		
		List<EmpVO> list = new ArrayList<EmpVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				EmpVO eVo = new EmpVO();
				
				eVo.setId(rs.getString("id"));
				eVo.setPass(rs.getString("pass"));
				eVo.setName(rs.getString("name"));
				eVo.setLev(rs.getString("lev"));
				eVo.setEnter(rs.getTimestamp("enter"));
				eVo.setGender(rs.getString("gender"));
				eVo.setPhone(rs.getString("phone"));
				
				list.add(eVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	
	
	
}
