<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "black";
	String pwd = "1234";
	String name = "JJJ";
	
	if(id.equals(request.getParameter("id")) && 
			pwd.equals(request.getParameter("pwd"))){
		session.setAttribute("loginUser", name);
		response.sendRedirect("main261.jsp");
		// 1. Cookie 객체 생성(username에 black을 맵핑)
		Cookie c = new Cookie("username", request.getParameter("name"));
		// 2. 속성 부여
		c.setMaxAge(60*60);
		// 3.클라이언트에 전송
		response.addCookie(c);
	}else{
%>
	<script>
		alert("로그인 실패");
		location.href="loginForm259.jsp";
	</script>	
<%
// 		response.sendRedirect("loginForm259.jsp");
	}
%>