<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>
<style>
		table, th, td { border: 1px solid black; }
</style>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<form action="joinProcess.jsp" name="frm">
	<table>
	<tr>
		<th colspan="2" align="center">회원가입 페이지</th>
	</tr>
	<tr>
		<td>아이디 : </td>
		<td><input type="text" name="id" value=""></td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td><input type="password" name="pwd" value=""></td>
	</tr>
	<tr>
		<td>이름 : </td>
		<td><input type="text" name="name" value=""></td>
	</tr>
	<tr>
		<td>나이 : </td>
		<td><input type="text" name="age" value=""></td>
	</tr>
	<tr>
		<td><label for="gender">성별 : </label></td>
		<td>
			<input type="radio" name="gender" value="남자" checked="checked"> 남자
			<input type="radio" name="gender" value="여자"> 여자
		</td>
	</tr>
	<tr>
		<td>이메일 주소 : </td>
		<td><input type="email" name="email" value=""></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="회원가입" onclick="return memberCheck()">&nbsp;&nbsp;
			<input type="reset" value="다시작성">
		</td>
	</tr>
	</table>
</form>
</body>
</html>