<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include</title>
</head>
<body>
<!-- 지시자 -->
<%-- <%@ include file="include_header.jsp" %> --%>
<%-- ActionTag --%>
<jsp:include page="include_header.jsp"></jsp:include>
	<hr>
	Main Page
	<hr>
<%-- ActionTag --%>
<jsp:include page="include_footer.jsp"></jsp:include>
<!-- 지시자 -->
<%-- <%@ include file="include_footer.jsp" %> --%>
</body>
</html>