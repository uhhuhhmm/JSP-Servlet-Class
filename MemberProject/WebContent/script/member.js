function memberCheck(){
	if (document.frm.id.value.length == 0 ){
		alert("아이디를 입력해주세요!");
		frm.id.focus();
		return false;
	}
	
	if(document.frm.pwd.value.length == 0) {
		alert("비밀번호를 입력해주세요!");
		frm.pwd.focus();
		return false;
	}
	
	if(document.frm.name.value.length == 0){
		alert("이름을 입력해주세요!");
		frm.name.focus();
		return false;
	}
	
	if(document.frm.age.value.length == 0){
		alert("나이를 입력해주세요!");
		frm.age.focus();
		return false;
	}
	
	if(isNaN(document.frm.age.value)){
		alert("나이를 숫자로 입력해주세요!");
		frm.age.focus();
		return false;
	}
	
	return true;
}