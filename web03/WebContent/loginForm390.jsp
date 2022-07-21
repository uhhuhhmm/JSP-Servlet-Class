<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String idcheck = "";
   		String userid = "";
   		String userpwd = "";
   		
   		String cookie = request.getHeader("Cookie");
   		
   		if(cookie != null){
   			Cookie cookies[] = request.getCookies();
   			
   			for(int i = 0; i < cookies.length; i++ ){
   				if(cookies[i].getName().equals("idcheck")){
   					idcheck = cookies[i].getValue();
   				} 
   				
   				if(cookies[i].getName().equals("userid")){
   					userid = cookies[i].getValue();
   				} 
   				
   				if(cookies[i].getName().equals("userpwd")){
   					userpwd = cookies[i].getValue();
   				}
   			}
   		}
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="testLogin390.jsp" method="post" >
	<label for="userid">아이디 : </label>
	<input type="text" name="id" id="userid" value="<%= idcheck != "" ? userid : "" %>">
	<br>
	<label for="userpwd">비밀번호 : </label>
	<input type="password" name="pwd" id="userpwd" value="<%= idcheck != "" ? userpwd : "" %>">
	<br>	
	<input type="checkbox" name="idcheck"> 아이디 저장 <br>
	<input type="submit" value="로그인">
	
</form>	
</body>
</html>