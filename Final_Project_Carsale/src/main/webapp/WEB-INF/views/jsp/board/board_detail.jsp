<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="spring.mvc.model.*"%>

<%
	BoardBean board = (BoardBean) request.getAttribute("boardDetail");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세페이지</title>
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
table {
	margin-top: 100px;
	height: auto;
	color: gray;
	font-size: small;
	font-weight: bold;
}

td {
	padding-left: 10px;
}
</style>

</head>
<body>

	<jsp:include page="/resources/global/header.jsp"></jsp:include>
	<h2 align="center">자유 게시판</h2>
	<div align="center">
		<table>
			<tr>
				<th height="15">글 번호</th>
				<td><%=board.getBoardNum()%></td>
			</tr>
			<tr>
				<th height="15">제목</th>
				<td><%=board.getBoardSubject()%></td>
			</tr>

			<tr bgcolor="cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>

			<tr>
				<th height="15">작성자</th>
				<td><%=board.getMemberId()%></td>
			</tr>

			<tr bgcolor="cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>

			<tr>
				<th>내용</th>
				<td><%=board.getBoardContent()%>
					<table border=0 width=490 height=500 style="table-layout: fixed">
						<tr>
							<td valign=top></td>
						</tr>
					</table></td>
			<tr bgcolor="cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>

			<tr>
				<td><a href="./boardList.bo"> [목록] </a></td>
				<td>
					<%
						if (session.getAttribute("id").equals(board.getMemberId())) {
					%> 
					<a href="./boardDelete.bo?num=<%=board.getBoardNum()%>"> [삭제] </a>
					<%
				 		}
				 	%> 
				</td>
			</tr>
		</table>
	</div>

</body>
</html>