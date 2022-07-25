<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
    
<%!
    	Connection conn = null;
		PreparedStatement pstmt = null;
    	String sql = "insert into members values(?, ?, ?, ?, ?, ?)";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinProcess</title>
</head>
<body>
<%
			request.setCharacterEncoding("UTF-8");
			
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			String gender = request.getParameter("gender");
			String email = request.getParameter("email");

		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setInt(4, Integer.parseInt(age));
			pstmt.setString(5, gender);
			pstmt.setString(6, email);
			
			pstmt.executeUpdate();
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try{
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e){
				e.printStackTrace();
			}
		}
	%>
	
	<h2>회원가입 완료</h2>
	<a href="member_list.jsp"> 회원 목록</a>
</body>
</html>