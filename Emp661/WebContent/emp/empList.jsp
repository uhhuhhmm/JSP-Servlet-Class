<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%-- <%
	int listcount = (Integer)(request.getAttribute("listcount"));
	int nowpage = (Integer)(request.getAttribute("page"));
	int maxpage = (Integer)(request.getAttribute("maxpage"));
	int startpage = (Integer)(request.getAttribute("startpage"));
	int endpage = (Integer)(request.getAttribute("endpage"));
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap" align="center">
<h1>리스트</h1>
<table class="list">
	<tr>
		<td colspan="5" style="border: white; text-align: right">
			<a href="EmpServlet?command=emp_write_form">정보 등록</a>
		</td>
	</tr>
	<tr>
		<th>아이디</th>
		<th>이름	</th>
		<th>권한</th>
		<th>성별</th>
		<th>전화번호</th>
	</tr>
	<c:forEach var="emp" items="${empList }">
		<tr class="record">
			<td>${emp.id }</td>
			<td>${emp.name }</td>
			<td>${emp.lev }</td>
			<td>${emp.gender }</td>
			<td>${emp.phone }</td>
		</tr>
	</c:forEach>
	<!-- 	페이지 번호 시작 -->
	<%-- <tr align="center" height="20">
		<td colspan="5">
			<%if(nowpage <= 1){ %>
			[이전] &nbsp;
			<%}else {%>
			<a href="BoardServlet?command=board_list&page=<%=nowpage - 1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<%
				for(int a = startpage; a <=endpage; a++){
					if(a == nowpage){
			%>
				[<%=a %>]		
				<%}else {%>
				<a href="BoardServlet?command=board_list&page=<%=a %>">[<%=a %>]</a>&nbsp;				
				<%} %>			
			<%} %>			
			<%if(nowpage >= maxpage) {%>
			[다음]
			<%}else { %>
			<a href="BoardServlet?command=board_list&page=<%=nowpage + 1 %>">[다음]</a>&nbsp;
			<%} %>
		</td>
	</tr> --%>
	<!-- 	페이지 번호 끝 -->
</table>
</div>
</body>
</html>