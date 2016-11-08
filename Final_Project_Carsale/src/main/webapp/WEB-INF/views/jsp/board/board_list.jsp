<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="spring.mvc.model.*"%>

<%
	List list = (List) request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 게시판</title>
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

<link rel=stylesheet href="css/global.css">
<link rel=stylesheet href="css/listview.css">
<!-- CSS, Script End -->
<style type="text/css">
.pen {
	font-weight: bold;
	color: black;
}
</style>

<style type="text/css">
table {
	margin-top: 50px;
	width: 80%;
	height: auto;
	color: gray;
	font-size: small;
}
</style>
</head>
<body>
	<jsp:include page="/resources/global/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->
	<h2 align="center">자유 게시판</h2>
	<div align="center">
		<table class="listview">
			<tr align="center" valign="middle" height="15">
				<td class="line" colspan="5" style="font-size: 15px;"></td>
			</tr>

			<tr align="center" style="font-size: 10pt">
				<td class="line" width="10%">
					<div align="center">번호</div>
				</td>
				<td class="line" width="20%">
					<div align="center">작성자</div>
				</td>
				<td class="line" width="45%">
					<div align="center">제목</div>
				</td>
				<td class="line" width="20%">
					<div align="center">날짜</div>
				</td>
				<td class="line" width="10%">
					<div align="center">따봉</div>
				</td>
			</tr>


			<%
				for (int i = 0; i < list.size(); i++) {
					BoardDTO board = (BoardDTO) list.get(i);
			%>

			<tr align="center">
				<td class="line"><%=board.getBoardNum()%></td>
				<td class="line"><%=board.getMemberId()%></td>
				<td class="line"><a
					href="./boarddetail.bo?num=<%=board.getBoardNum()%>"> <%=board.getBoardSubject()%>
				</a></td>
				<td class="line"><%=board.getBoardDate()%></td>

				<td id="good"><button><%=board.getBoardGood()%></button></td>

			</tr>

			<%
				}
			%>

		</table>
		<p>
			<a href="./boardwrite.bo"> <img class="pen_img"
				src="http://cafeimgs.naver.net/cafe4/ico-btn-write.gif" width="10"
				height="10" /><span class="pen">글쓰기</span></a>
		</p>
	</div>

</body>
</html> --%>