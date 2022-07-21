<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Membership Management</title>
<script type="text/javascript" src="script/member.js?var=2"></script>

</head>
<body>
	<h2>Create Member</h2>
	<h5>'*' is a required field</h5>
	<form action="join.do" method="post" name="frm">
		<table>
			<tr>
				<td> Name </td>
				<td> <input type="text" name="name" size="20">*</td>
			</tr>				
			<tr>
				<td> ID </td>
				<td> 
					<input type="text" name="userid" size="20" id="userid">*
					<input type="hidden" name="reid" size="20">
					<input type="button" value="ID Check" onclick="idCheck()">
				</td>
			</tr>				
			<tr>
				<td> Password </td>
				<td> <input type="password" name="pwd" size="20">*</td>
			</tr>
			<tr height="30">
				<td width="80">Confirm Password</td>
				<td> <input type="password" name="pwd_check" size="20">*</td>
			</tr>
			<tr>
				<td> Email </td>
				<td> <input type="text" name="email" size="20"></td>
			</tr>
			<tr>
				<td> Phone </td>
				<td> <input type="text" name="phone" size="20"></td>
			</tr>
			<tr>
				<td> Class </td>
				<td> 
					<input type="radio" name="admin" value="0" checked="checked"> General
					<input type="radio" name="admin" value="1"> Admin
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Confirm" onclick="return joinCheck()">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Cancel">
				</td>
			</tr>
			<tr><td colspan="2">${message }</td></tr>
		</table>
	</form>
</body>
</html>