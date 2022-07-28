<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 정보 </title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<div id="wrap" align="center">
	 <h1> 정보 등록 </h1>
	 <form action="EmpServlet" method="post" name="frm">
	 	<input type="hidden" name="command" value="emp_write"> 
	 	<table>
	 		<tr>
	 			<th> 아이디 </th>
	 			<td>
	 				<input type="text" name="id">
	 					 * 필수 
	 			</td>
	 		</tr>
	 		
	 		<tr>
	 			<th> 비밀번호 </th>
	 			<td>
	 				<input type="password" name="pass"> 
	 					* 필수
	 			</td>
	 		</tr>
	 		
	 		<tr>
	 			<th> 이름 </th>
	 			<td>
	 				<input type="text" name="name">
	 			</td>
	 		</tr>
	 		
	 		<tr>
	 			<th> 
	 				<label for="lev">권한 </label>
	 			</th>
	 			<td>
	 				<select>
				        <option value="일반사원	">일반사원</option>
				        <option value="운영자">운영자</option>
    				</select>
	 			</td>
	 		</tr>
	 		
	 		<tr>
	 			<th> 
	 				<label for="lev">성별 </label>
	 			</th>
	 			<td>
	 				<select>
				        <option value="남자">남자</option>
				        <option value="여자">여자</option>
    				</select>
	 			</td>
	 		</tr>
	 	</table>
	 	<br><br>
	 	<input type="submit" value="확인" onclick="return empCheck()">
	 	<input type="reset" value="취소">
	 	<input type="button" value="목록" onclick="location.href='EmpServlet?command=emp_list'">
	 </form>
</div>
</body>
</html>