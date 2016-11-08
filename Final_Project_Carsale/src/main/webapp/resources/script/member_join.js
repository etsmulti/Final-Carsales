	function check() {
		var id1 = joinform.id.value;
		var password1 = joinform.pw.value;
		var password2 = joinform.pw2.value;
		var email1 = joinform.email.value;
		var email2 = joinform.naver.value;
		var phone = joinform.phone.value;
		var addr1 = joinform.addr1.value;
		var addr2 = joinform.addr2.value;
		var mobile = joinform.mobile.value;

		var forms = document.getElementById("joinform");
		
		if (id.length == 0) {
			alert("아이디를 입력하세요.");
			joinform.id.focus();
			return false;
		}

		if ((forms.name.value == "")
				|| (forms.name.value.length <= 1)) {
			alert("이름을 제대로 입력해 주세요.");
			forms.name.focus();
			return false;
		}
		
		if (pw.length == 0) {
			alert("비밀번호를 입력하세요.");
			joinform.pw.focus();
			return false;
		}
		if (pw != pww2) {
			alert("비밀번호가 일치하지 않습니다.");
			joinform.pw.value = "";
			joinform.pw2.value = "";
			joinform.pw.focus();
			return false;
		}
		if ((forms.jumin1.value == "")
				|| (forms.jumin1.value.length < 6)) {
			alert("주민등록번호 앞의 6자리를 입력해 주세요.");
			forms.jumn1.focus();
			return false;
		}
		if ((forms.jumin2.value == "")
				|| (forms.jumin2.value.length < 7)) {
			alert("주민등록번호 뒤의 7자리를 입력해 주세요.");
			forms.jumin2.focus();
			return false;
		}		
		if (phone.length == 0) {
			alert("집 전화를 입력하세요.");
			joinform.phone.focus();
			return false;
		}
		if ((forms.zip1.value == "")
				|| (forms.zip1.value.length < 3)) {
			alert("우편번호 앞의 3자리를 입력해 주세요.");
			forms.zip1.focus();
			return false;
		}
		if ((forms.zip2.value == "")
				|| (forms.zip2.value.length < 3)) {
			alert("우편번호 뒤의 3자리 입력해 주세요.");
			forms.zip2.focus();
			return false;
		}
		if (addr1.length == 0) {
			alert("집 주소를 입력하세요.");
			joinform.addr1.focus();
			return false;
		}
		if (addr2.length == 0) {
			alert("상세 주소를 입력하세요.");
			joinform.addr2.focus();
			return false;
		}
		if (mobile.length == 0) {
			alert("휴대폰 번호를 입력하세요.");
			joinform.mobile.focus();
			return false;
		}

		return true;
	}
	
	function openConfirmId(joinform) {		
		var id1 = joinform.id.value;		
		var url = "./MemberIDCheckAction.me?id="
				+ joinform.id.value;

		if (id1.length == 0 ) {
			alert("아이디를 입력하세요.");
			joinform.id.focus();
			return false;
		}
		open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"
				+ "scrollbars=no,resizable=no,width=400,height=200");
	}

	function openZipcode(joinform) {
		var url = "./Zipcode.me"
		open(url, "confirm", "toolbar=no,location=no,"
				+ "status=no,menubar=no," + "scrollbars=yes,resizable=no,"
				+ "width=410,height=400");
	}

	function gNumCheck() {
		if (event.keyCode >= 48 && event.keyCode <= 57) {
			return true;
		} else {
			event.returnValue = false;
		}
	}