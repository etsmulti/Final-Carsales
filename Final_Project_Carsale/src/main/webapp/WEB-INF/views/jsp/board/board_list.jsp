<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="spring.mvc.model.*"%>

<%
	List<BoardBean> list = (List<BoardBean>) request.getAttribute("list");
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

<link rel=stylesheet href="./resources/css/global.css">
<link rel=stylesheet href="./resources/css/board.css">
<!-- CSS, Script End -->

</head>
<body>
	<jsp:include page="/resources/global/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->
	<div class="container">
		<h2 align="center">자유 게시판</h2>
		<div align="center">
			<table class="board">
				<tr align="center" valign="middle" height="15">
					<td class="line" colspan="6"></td>
				</tr>

				<tr class="category">
					<th width="10%">
						<div align="center">글번호</div>
					</th>
					<th width="50%">
						<div align="center">글제목</div>
					</th>
					<th width="10%">
						<div align="center">작성자</div>
					</th>
					<th width="13%">
						<div align="center">작성일</div>
					</th>
					<th width="12%">
						<div align="center">조회수</div>
					</th>
					<th width="5%">
						<div align="center">좋아요</div>
					</th>
				</tr>
				<%
					if(list.size()==0){
				%>
						<tr class="content" align="center">
							<td colspan="6">게시물이 없습니다.</td>
						</tr>
				<%
					}
				%>

				<%
					for (int i = 0; i < list.size(); i++) {
						BoardBean board = (BoardBean) list.get(i);
				%>

				<tr class="content" align="center">
					<td><%=board.getBoardNum()%></td>
					<td class="title"><a
						href="./BoardDetail.bo?num=<%=board.getBoardNum()%>"> <%=board.getBoardSubject()%></a>
					</td>
					<td><%=board.getMemberId()%></td>
					<td><%=board.getBoardDate().getYear() + 1900%> .<%=board.getBoardDate().getMonth() + 1%>
						.<%=board.getBoardDate().getDate()%></td>
					<td><%=board.getBoardCount()%></td>
					<td><%=board.getBoardGood()%></td>
				</tr>

				<%
					}
				%>

			</table>
			<p align="right">
				<%
					String logon_id = (String) session.getAttribute("id");
					if (logon_id != null) {
				%>
				<button>
					<a href="./BoardWrite.bo"> <img class="pen_img"
						src="http://cafeimgs.naver.net/cafe4/ico-btn-write.gif" width="10"
						height="10" /><span class="pen">글쓰기</span></a>
				</button>
				<%
					}
				%>

			</p>
		</div>
	</div>

</body>
</html>