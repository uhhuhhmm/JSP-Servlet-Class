<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String age = request.getParameter("age");
    	String name = (String)request.getAttribute("name");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor=darkgrey>
	forward 방식으로 이동된 페이지<br>
	Age : <%=age %>
	Name : <%=name %>
</body>
</html>