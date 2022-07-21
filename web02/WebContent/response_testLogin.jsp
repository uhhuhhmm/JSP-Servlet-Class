<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String id = "admin";
	String pwd = "0000";
	String name = "unknown";
	request.setCharacterEncoding("UTF-8");
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("response_main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
		
	}else{
		response.sendRedirect("https://www.police.go.kr/index.do");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>