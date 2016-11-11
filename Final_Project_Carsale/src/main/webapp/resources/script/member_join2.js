function join_check() {
	if ($.trim($("#id").val()) == "") {
		alert("아이디를 입력하세요.");
		$("#id").val("").focus();
		return false;
	}
	if ($.trim($("#pw").val()) == "") {
		alert("비밀번호를 입력하세요.");
		$("#pw").val("").focus();
		return false;
	}
	if ($.trim($("#pw_confirm").val()) == "") {
		alert("비밀번호확인을 입력하세요!");
		$("#pw_confirm").val("").focus();
		return false;
	}
	if ($.trim($("#pw").val()) != $.trim($("#pw_confirm").val())) {
		alert("비밀번호가 일치하지 않습니다.");
		$("#pw").val("");
		$("#pw_confirm").val("");
		$("#pw").focus();
		return false;
	}
	if ($.trim($("#name").val()) == "") {
		alert("이름을 제대로 입력해 주세요.");
		$("#name").val("").focus();
		return false;
	}

	if ($.trim($("#jumin_front").val()) == ""
			|| ($.trim($("#jumin_front").val()).length < 6)) {
		alert("주민등록번호 앞의 6자리를 입력해 주세요.");
		forms.jumin_front.focus();
		return false;
	}
	if ($.trim($("#jumin_back").val()) == ""
			|| ($.trim($("#jumin_back").val()).length < 7)) {
		alert("주민등록번호 뒤의 7자리를 입력해 주세요.");
		forms.jumin_back.focus();
		return false;
	}
	if ($.trim($("#email").val()) == "") {
		alert("이메일주소를 입력하세요.");
		$("#email").val("").focus();
		return false;
	}
	if ($.trim($("#domain").val()) == "") {
		alert("도메인주소를 입력하세요.");
		$("#domain").val("").focus();
		return false;
	}

	if ($.trim($("#phone").val()) == "") {
		alert("집 전화번호를 입력하세요.");
		$("#phone").val("").focus();
		return false;
	}
	
	if ($.trim($("#mobile").val()) == "") {
		alert("휴대폰 번호를 입력하세요.");
		$("#phone").focus();
		return false;
	}
	
	if ($.trim($("#zip_front").val()) == ""
			|| $.trim($("#zip_front").val()).length < 3) {
		alert("우편번호 앞의 3자리를 입력해 주세요.");
		return false;
	}
	if ($.trim($("#zip_back").val()) == ""
			|| $.trim($("#zip_back").val()).length < 3) {
		alert("우편번호 뒤의 3자리 입력해 주세요.");
		return false;
	}
	if ($.trim($("#addr_front").val()) == "") {
		alert("주소를 입력하세요!");
		return false;
	}
	if ($.trim($("#addr_back").val()) == "") {
		alert("나머지 주소를 입력하세요!");
		$("#addr_back").val("").focus();
		return false;
	}

}

function join_cancel() {
	location.href = './';
}

function openConfirmId(joinform) {
	var id1 = joinform.id.value;
	var url = "./MemberIDCheck.me?id=" + joinform.id.value;

	if (id1.length == 0) {
		alert("아이디를 입력하세요.");
		joinform.id.focus();
		return false;
	}
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"
			+ "scrollbars=no,resizable=no,width=400,height=200");
}

function openZipcode(joinform) {
	var url = "./Zipcode.me"
	open(url, "confirm", "toolbar=no,location=no," + "status=no,menubar=no,"
			+ "scrollbars=yes,resizable=no," + "width=410,height=400");
}

function gNumCheck() {
	if (event.keyCode >= 48 && event.keyCode <= 57) {
		return true;
	} else {
		event.returnValue = false;
	}
}