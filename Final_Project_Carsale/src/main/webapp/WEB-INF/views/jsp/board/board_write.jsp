<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 등록하기</title>
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

</head>
<body>	

	<jsp:include page="/resources/global/header.jsp"></jsp:include>
	<h2 align="center">자유 게시판 입력</h2>
	<div align="center">
		<form action="./boardWriteProcess.bo" enctype="multipart/form-data"
			method="POST">
			<table>
				<tr>
					<th>제목</th>
					<td><div class="col-sm-12">
							<input type="text" class="form-control" id="title" name="title" placeholder="제목">
						</div> </td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<div class="col-sm-12">
							<textarea class="form-control" rows="20" cols="60" id="content" name="content"></textarea>
						</div>
					</td>
				</tr>
				<tr>
					<td style="font-family: 돋음; font-size: 12">
						<div align="center">파일 첨부</div>
					</td>
					<td><input name="board_file" type="file" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="등록하기"></td>
				</tr>
			</table>
		</form>

	</div>
	
</body>
</html>