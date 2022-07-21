<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name=frm action="webURL.jsp">
<h1>검색 엔진 정보 페이지</h1>
<h3>검색 엔진을 선택하세요</h3>

<select name="web">
	<option value="https://www.google.com" >Google</option>
	<option value="https://www.naver.com">Naver</option>
	<option value="https://www.daum.net">Daum</option>
	<option value="https://www.nate.com">Nate</option>
</select>

<input type="submit" value="Confirm">

</form>
</body>
</html>