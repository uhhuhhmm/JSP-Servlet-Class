<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Research</title>
</head>
<body>
	<h2>Research</h2>
	<form action="research.jsp" method="post">
	<table>
		<tr>
			<td> Name		:	</td>
			<td>
			<input type="text" name="name" size="20">	
			</td>
		</tr>
		<tr>
			<td> Gender		:	</td>
			<td>
			<input type="radio" name="gender" value="male" checked="checked"> Male
			<input type="radio" name="gender" value="female"> Female
			</td>
		</tr>
		<tr>
			<td> Favorite Season: </td>
			<td>
			<input type="checkbox" name="season" value="1"> Spring
			<input type="checkbox" name="season" value="2" checked="checked"> Summer
			<input type="checkbox" name="season" value="3"> Fall
			<input type="checkbox" name="season" value="4"> Winter
			</td>
		</tr>
		<tr align="center">
			<td><input type="submit" value="Send"></td>
			<td><input type="reset" value="Cancel"></td>
		</tr>
	</table>
	</form>
</body>
</html>