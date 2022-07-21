<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log-in</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	label{
		width: 160px;
		display: inline-block;
		float: left;
	}
	
	#button {
		text-align: center;
	}
</style>
<script>
	function check_ok(){
// 		if(document.frm.name.value.length == 0){
// 			alert("Type in Name");
// 			document.frm.name.focus();
// 			return false;
// 		}
// 		if(document.frm.ssf1.value.length != 6){
// 			alert("Wrong Number 6 length")
// 			document.frm.ssf1.focus();
// 			return false;
// 		}
// 		if(document.frm.ssf2.value.length != 7){
// 			alert("Wrong Number 7 length")
// 			document.frm.ssf2.focus();
// 			return false;
// 		}
		
// 		if(document.frm.id.value.length < 5){
// 			alert("Wrong Type ID")
// 			document.frm.id.focus();
// 			return false;
// 		}
		
// 		if(document.frm.pwd.value.length == 0){
// 			alert("Type in Password")
// 			document.frm.pwd.focus();
// 			return false;
// 		}
		
// 		if(document.frm.pwd.value != document.frm.cpwd.value){
// 			alert("Wrong Match Password")
// 			document.frm.cpwd.focus();
// 			return false;
// 		}
		
// 		if(document.frm.pwd.value == document.frm.cpwd.value){
// 			alert("Match Password")
// 			document.frm.cpwd.focus();
// 			return false;
// 		}
		
		if($("#name").val() == ""){
			alert("이름을 작성해주세요");
			$("#name").focus();
			return false;
		}else if($("#ssf1").val() == ""){
			alert("주민번호를 입력해주세요")
			$("#ssf1").focus();
			return false;
		}else if($("#ssf2").val() == ""){
			alert("주민버호를 입력해주세요")
			$("#ssf2").focus();
			return false;
		}
			
	
	}
</script>

</head>
<body>
	<form onsubmit="return check_ok()" name="frm" action="MemberServlet">
		<label for="name"> Name </label>		
		<input type="text" id="name" name="name" value="Name">
		<br><br>
		
		<label>SSF</label>
		<input type="text" id="ssf1" name="ssf1" value="000000"> - 
		<input type="text" id="ssf2" name="ssf2" value="0000000">
		<br><br>
	
		<label for="id"> ID </label>
		<input type="text" id="id" name="id" value="pinksung">
		<br><br>
		
		<label for="pwd"> PASSWORD </label>
		<input type="password" id="pwd" name="pwd" value="1234">
		<br><br>
		
		<label for="cpwd"> CHECK PASSWORD </label>
		<input type="password" id="cpwd" name="cpwd" value="1234">
<!-- 		<input type="submit" value="CHECK" onclick="return check_ok()"> -->
		<br><br>
		
		<label for="email"> E-MAIL </label>
		<input type="text" name="email" value="JJJ"> @ <input type="text" name="email_dns" value="">
		<select name="emailaddr">
			<option value="daum.net">daum.net</option>
			<option value="naver.com">naver.com</option>
			<option value="gmail.com">gmail.com</option>
		</select>
		<br><br>
		
		<label for="zip"> ZIP </label>
		<input type="text" id="zip" name="zip" value="312-123">
		<br><br>
		
		<label for="addr1"> ADDRESS </label>
		<input type="text" id="addr1" name="addr1" value="Home">
		<input type="text" name="addr2" value="none">
		<br><br>
		
		<label for="ph"> PH </label>
		<input type="text" id="ph" name="ph" value="000-0312-1023">
		<br><br>
		
		<label for="job"> JOB </label>
		<select id="job" name="job" size="3">
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원" selected="selected">공무원</option>
			<option value="군인">군인</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select>
		<br><br>
		
		<label for="chk_mail">Mail/SMS</label>
		<input type="radio" id="chk_mail" name="chk_mail" checked> 수신
		<input type="radio" id="chk_mail" name="chk_mail" > 수신거부
		<br><br>
		
		<label for="interest">관심분야</label>
	      <input type="checkbox" id="interest" name="interest" value="생두"> 생두         
	      <input type="checkbox" id="interest" name="interest" value="원두" checked> 원두         
	      <input type="checkbox" id="interest" name="interest" value="로스팅"> 로스팅         
	      <input type="checkbox" id="interest" name="interest" value="핸드드립" checked> 핸드드립         
	      <input type="checkbox" id="interest" name="interest" value="에스프레소" checked> 에스프레소         
	      <input type="checkbox" id="interest" name="interest" value="창업"> 창업
	      <br><br>

		
		<div id="button">
<!-- 			<input type="submit" value="회원가입" onclick="return check_ok()"> -->
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
		</div>
		
	</form>
</body>
</html>