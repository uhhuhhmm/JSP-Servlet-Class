<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String language = "kr";
    	String cookie = request.getHeader("Cookie");
    	
    	if(cookie != null){
    		Cookie cookies[] = request.getCookies();
    		
    		for(int i = 0; i < cookies.length; i++){
    			if(cookies[i].getName().equals("language")){
    				language = cookies[i].getValue();
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
	<%if(language.equals("kr")) {%>
	<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
	<%}else if(language.equals("eng")){%>
	<h3>Hello, Give me a fucking break!</h3>
	<%}else{%>
	<h3>Bello, Tatata bala tu</h3>
	<%} %>
	<form action="mlpro.jsp" method="post">
		<input type="radio" name="language" value="kr"
		<%if(language.equals("kr")){%>checked<%} %>>한국어 페이지 보기
		<input type="radio" name="language" value="eng"
		<%if(language.equals("eng")){%>checked<%} %>>영어 페이지 보기
		<input type="radio" name="language" value="banana"
		<%if(language.equals("banana")){%>checked<%} %>>바나나 페이지 보기
		<input type="submit" value="설정">
	</form>
</body>
</html>