<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_info</title>

<style>
		table, th, td { 
			border: 1px solid black; 
			width: 300px;
			text-align: center;
			}
</style>

</head>
<body>
<form action="member_list.jsp">
	<table>	
<%
	try{
		request.setCharacterEncoding("UTF-8");

		String sql = "select * from members where id=?, password=?, name=?, age=?, gender=?, email=?";
		
		String id = request.getParameter("id");
		
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()){	
			pstmt.setString(1, rs.getString("id"));
			pstmt.setString(2, rs.getString("password"));
			pstmt.setString(3, rs.getString("name"));
			pstmt.setInt(4, rs.getInt("age"));
			pstmt.setString(5, rs.getString("gender"));
			pstmt.setString(6, rs.getString("email"));	
		} 
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if (rs != null) 
				rs.close();
			if (pstmt != null) 
				pstmt.close();
			if (conn != null) 
				conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
		<tr>
			<td>아이디 : </td>
			<td>${id }</td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td>${pwd }</td>
		</tr>
		<tr>
			<td>이름 : </td>
			<td>${name }</td>
		</tr>
		<tr>
			<td>나이 : </td>
			<td>${age }</td>
		</tr>
		<tr>
			<td>성별 : </td>
			<td>${gender }</td>
		</tr>
		<tr>
			<td>이메일 주소 : </td>
			<td>${email }</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="리스트로 돌아가기" onclick="location.href='member_list.jsp'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>