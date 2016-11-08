<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>Login</title>
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
<style type="text/css">
	form{
		margin: 0 auto;
		width: 500px;
	}
</style>
</head>
<body>
	<jsp:include page="/resources/global/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->
	<p align="center">
	<div class="container">
		<h2>Login Page</h2>
		<!-- action : 로그인인증으로넘어가야됨 -->
		<form class="form-horizontal" action="./MemberLoginAction.me" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="ID">ID:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="MEMBER_ID" id="id"
						placeholder="Enter email">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Password:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="MEMBER_PW" id="pwd"
						placeholder="Enter password">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label><input type="checkbox">Remember me</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>