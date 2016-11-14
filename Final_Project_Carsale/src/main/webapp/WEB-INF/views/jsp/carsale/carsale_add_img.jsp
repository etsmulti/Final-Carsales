<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="spring.mvc.model.*"%>
<%@ page import="java.util.*"%>

<%
	int carnum = (int)request.getAttribute("carnum");
	System.out.println("add_image jsp : "+carnum);
	String img = "img/carsale/" + carnum + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel=stylesheet href="./resources/css/main.css">

<style type="text/css">

#content {
	width: 100% auto;
	height: 1950px;
	float: left;
	background: white;
}
</style>
<link rel=stylesheet href="../css/searcher.css">
<script src="../script/searcher.js"></script>


</head>

<body>
	<div id="header">
		<jsp:include page="/resources/global/header.jsp"></jsp:include>
	</div>
	<div class="container">
		<h2>타이틀</h2>
		<div id="content">
			<form action="fileUpload.cs" enctype="multipart/form-data"
				method="post">
				<input type="hidden" name="carnum" value=<%=carnum%>>
				<!--application/x-www-form-urlencoded(디폴트) : 디폴트로 하면 파일의 경로와 함께 폴더이름만 보내진다.  -->
				<!--multipart/form-data로 해야 파일까지 같이 전송된다.  -->
				<table border="2" cellpadding="20">
					<tr>
						<td>정면사진</br> <input type="file" name="file1" /></br></td>
						<td>측면사진</br> <input type="file" name="file2" /></br></td>
						<td>후면사진</br> <input type="file" name="file3" /></br></td>
					</tr>
					<tr>
						<td>실내사진</br> <input type="file" name="file4" /></br></td>
						<td>엔진사진</br> <input type="file" name="file5" /></br></td>
						<td>계기판사진</br> <input type="file" name="file6" /></br></td>
					</tr>
					<tr>
						<td>변속기사진</br> <input type="file" name="file7" /></br></td>
						<td>차량시트사진</br> <input type="file" name="file8" /></br></td>
						<td>휠타이어사진</br> <input type="file" name="file9" /></br></td>
					</tr>
					<tr>
						<td>트렁크사진</br> <input type="file" name="file10" /></br></td>
						<td>옵션1사진</br> <input type="file" name="file11" /></br></td>
						<td>옵션2사진</br> <input type="file" name="file12" /></br></td>
					</tr>
					<tr>
						<td>옵션3사진</br> <input type="file" name="file13" /></br></td>
						<td>옵션4사진</br> <input type="file" name="file14" /></br></td>
						<td>옵션5사진</br> <input type="file" name="file15" /></br></td>
					</tr>
					<tr>
						<td>옵션6사진</br> <input type="file" name="file16" /></br></td>
						<td>옵션7사진</br> <input type="file" name="file17" /></br></td>
						<td>옵션8사진</br> <input type="file" name="file18" /></br></td>
					</tr>
					<tr>
						<td>옵션9사진</br> <input type="file" name="file19" /></br></td>
						<td>옵션10사진</br> <input type="file" name="file20" /></br></td>
						<td></td>
					</tr>
				</table>
				<p>파일을 등록하실려면 파일을 등록한후 파일 업로드를 눌려 주세요</p>
				<input type="submit" value="파일 업로드" />
			</form>
		</div>
	</div>

	<div class="footer">
		<jsp:include page="/resources/global/footer.jsp"></jsp:include>
	</div>
</body>
</html>