<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
   <%! // 선언부는 첫 방문자에 의해서 단 한번 수행합니다. 
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;
    	
    	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    	String uid = "scott";
    	String pass = "tiger";
    	String sql = "select * from emp";
   %>
    	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width='800' border='1'>
<tr>
<th>EMPNO</th><th>ENAME</th><th>JOB</th><th>MGR</th>
<th>HIREDATE</th><th>SAL</th><th>COMM</th><th>DEPTNO</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, uid, pass);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()){	
		out.println("<tr>");
		out.println("<td>"+rs.getInt("empno")+"</td>");
		out.println("<td>"+rs.getString("ename")+"</td>");
		out.println("<td>"+rs.getString("job")+"</td>");
		out.println("<td>"+rs.getInt("mgr")+"</td>");
		out.println("<td>"+rs.getDate("hiredate")+"</td>");		
		out.println("<td>"+rs.getInt("sal")+"</td>");		
		out.println("<td>"+rs.getInt("comm")+"</td>");		
		out.println("<td>"+rs.getInt("deptno")+"</td>");		
		out.println("</tr>");
	} // while의 끝
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
} // finally의 끝
%>
</table>
</body>
</html>