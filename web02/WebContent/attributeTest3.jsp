<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attributeTest3</title>
</head>
<body>
	<h1>Application 영역에 저장된 정보</h1>
	<p><%=application.getAttribute("name") %></p>
	<p><%=application.getAttribute("id") %></p>
	
	<br><br>
	
	<h1>session 영역에 저장된 정보</h1>	
	<%
		Enumeration e = session.getAttributeNames();
		while(e.hasMoreElements()){
			String attributeName = (String)e.nextElement();
			String attributeValue = (String)session.getAttribute(attributeName);
	%>
			<p><%=attributeName %>:<%=attributeValue %></p>
	<% 		
		}
	%>
</body>
</html>