<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Making Page</title>
<style>
	body{
		text-align:center;
	}
</style>
</head>
<body>
	<form method="get" action="RadioServlet">
		<label for="name">이름 : </label>
		<input type="text" id="name" name="name">
		<br><br>
		
		<label for="ssn">주민번호 : </label>
		<input type="text" id="ssnf" name="ssnf" value="000000" size=5 maxlength=6> -
		<input type="text" id="ssnb" name="ssnb" value="0000000" size=5 maxlength=7>
		<br><br>
		
		<label for="id">ID : </label>
		<input type="text" id="id" name="id" value="ID" size=5 maxlength=10>
		<br>
		<label for="pwd">Password : </label>
		<input type="password" id="pwd" name="pwd" value="PASSWORD" size=10 maxlength=20>
		<br><br>
		
		<label for="gender"> 성별 : </label>
		<input type="radio" id="gender" name="gender" value="남자" checked> 남자
		<input type="radio" id="gender" name="gender" value="여자"> 여자
		<br><br>
		
		<label for="chk_mail"> 메일 정보 수신 여부 : </label>
		<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked> 수신
		<input type="radio" id="chk_mail" name="chk_mail" value="no"> 거부
		<br><br>
		
		<input type="checkbox" name="item" value="신발"> 신발
		<input type="checkbox" name="item" value="가방"> 가방
		<input type="checkbox" name="item" value="벨트"> 벨트
		<input type="checkbox" name="item" value="모자"> 모자
		<br><br>
		
		<label>직업</label>
		<select name="job" size=1>
			<option value="">선택하세요</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="교육">교육</option>
		</select>
		<br><br>
		
		<label>관신분야</label>
		<select name="interest" size=5 multiple="multiple">
			<option value="에스프레소">에스프레소</option>
			<option value="로스팅">로스팅</option>
			<option value="생두">생두</option>
			<option value="원두">원두</option>
			<option value="핸드드립">핸드드립</option>
		</select>
		<br><br>
		
		<label for="content"> 간단한 가입 인사를 적어주세요 ^0^ </label>
		<br><br>
		<textarea id="content" name="content" rows="3" cols="35"></textarea>
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>