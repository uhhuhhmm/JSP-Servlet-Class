<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
   <%!
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;
    	
    	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    	String uid = "scott";
    	String pass = "tiger";
    	String sql = "select * from members";
   %>
    	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_list</title>
</head>
<body>
<table width='450' border='1'>
	<tr>
		<th colspan="6">회원 목록</th>
	</tr>
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>성별</th>
		<th>이메일</th>
	</tr>
<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, uid, pass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){	
			out.println("<tr>");
			out.println("<td><a href='member_info.jsp?id="+rs.getString("id") +"'>" + rs.getString("id")+"</td>");
			out.println("<td>"+rs.getString("password")+"</td>");
			out.println("<td>"+rs.getString("name")+"</td>");
			out.println("<td>"+rs.getInt("age")+"</td>");
			out.println("<td>"+rs.getString("gender")+"</td>");		
			out.println("<td>"+rs.getString("email")+"</td>");		
			out.println("</tr>");
		} 
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</table>
</body>
</html>