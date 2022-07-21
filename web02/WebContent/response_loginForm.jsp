<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response_testLogin.jsp" method="post">
		<label for="userid"> ID : </label>
		<input type="text" name="id" id="userid"><br>
		
		<label for="userpwd"> PS : </label>
		<input type="password" name="pwd" id="userpwd"><br>
		
		<input type="submit" value="Login">
	</form>
</body>
</html>