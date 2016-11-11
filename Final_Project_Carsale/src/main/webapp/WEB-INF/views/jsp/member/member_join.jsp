<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원가입</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel=stylesheet href="./resources/css/global.css">
<script	src="./resources/script/member_join2.js"></script>
 
<style type="text/css">
.table {
	width: 700px;
}

table p {
	font-weight: 700;
	text-align: right;
}
</style>
</head>
<body>
	<jsp:include page="/resources/global/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->
	<div class="container">
		<h2>Join Page</h2>
		<form name="joinform" id="joinform" action="./MemberJoinProcess.me"
			method="post" enctype="multipart/form-data" onsubmit="return join_check()">
			<p align="center">
			<table class="table">
				<tr>
					<td bgcolor="#f5f5f5"><p>아이디</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-6">
							<input type="text" class="form-control" id="id" name="id" placeholder="ID">
						</div> <input type="button" name="confirm_id" value="중복확인"
						onclick="openConfirmId(this.form)" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>비밀번호</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-6">
							<input type="password" class="form-control" name="pw" id="pw" placeholder="PASSWORD">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>비밀번호확인</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-6">
							<input type="password" class="form-control" name="pw_confirm" id="pw_confirm"
								placeholder="Password">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5">&nbsp;</td>
					<td>(아이디와 비밀번호는 문자와 숫자를 조합하여 2~12자리로 만들어 주세요)</td>
				</tr>

				<tr>
					<td width="17%" bgcolor="#f5f5f5"><p>이름</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-6">
							<input type="text" class="form-control" name="name" id="name"
								placeholder="Name">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>주민등록번호</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-3">
							<input type="text" class="form-control" name="jumin_front" id="jumin_front"
								placeholder="6 Chracters">
						</div>
						<div class="col-sm-1">-</div>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="jumin_back" id="jumin_back"
								placeholder="7 Chracters">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>이메일주소</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-3">
							<input type="text" class="form-control" name="email" id="email"
								placeholder="E-MAIL">
						</div>
						<div class="col-sm-1">@</div>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="domain" id="domain"
								placeholder="naver.com">
						</div>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>메일수신 여부</p></td>
					<td>&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="MEMBER_EMAIL_GET" value="YES" checked /> 
						<font size="2">수신</font>
						&nbsp;&nbsp;
						<input type="radio" name="MEMBER_EMAIL_GET" value="NO" />
						<font size="2">수신 안함</font>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>집전화</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-6">
							<input type="text" class="form-control" name="phone" id="phone"
								placeholder="Phone">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>휴대폰</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-6">
							<input type="text" class="form-control" name="mobile" id="mobile"
								placeholder="Mobile">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>우편번호</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-2">
							<input type="text" class="form-control" name="zip_front" id="zip_front"
								placeholder="Post">
						</div>
						<div class="col-sm-1">-</div>
						<div class="col-sm-2">
							<input type="text" class="form-control" name="zip_back" id="zip_back"
								placeholder="Post">
						</div> 
						<input type="button" name="zipcode" value="우편번호 검색"	onclick="openZipcode(this.form)" />
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>집주소</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-11">
							<input type="text" class="form-control" name="addr_front" id="addr_front"
								placeholder="Address">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"><p>상세주소</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-11">
							<input type="text" class="form-control" name="addr_back" id="addr_back"
								placeholder="Details">
						</div>
					</td>
				</tr>		
				<tr>
					<td bgcolor="#f5f5f5"><p>프로필 사진</p></td>
					<td>&nbsp;&nbsp;&nbsp;
						<div class="col-sm-11">
							<input type="file" name="member_image">
						</div>
					</td>
				</tr>				

			</table>
			<table class="table">
				<tr>
					<td align="center">
						<br/> 
						<input type="submit" value="확 인" />
						<button type="button" onclick="join_cancel()">취소</button>
					</td>
				</tr>
			</table>
		</form>
		<!-- 회원가입 -->
	</div>
</body>
</html>