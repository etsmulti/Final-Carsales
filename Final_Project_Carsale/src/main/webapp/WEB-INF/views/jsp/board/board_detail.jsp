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
<link rel=stylesheet href="./resources/css/board.css">


</head>
<body>

	<jsp:include page="/resources/global/header.jsp"></jsp:include>

	<div class="content-area">
		<div class="group-area">네비게이션</div>
		<div class="main-area">
			<div class="inbox">
				<div class="title-box">
					<div class="fl">
						<div class="title">
							<strong><%=board.getBoardSubject()%></strong> <span>|자유게시판</span>
						</div>
					</div>
					<div class="fr">
						<div class="time-stamp">
							<%=board.getBoardDate().getYear() + 1900%>.
							<%=board.getBoardDate().getMonth() + 1%>.
							<%=board.getBoardDate().getDate()%>.
							<%
								if (board.getBoardDate().getHours() < 10) {
							%>
									0<%=board.getBoardDate().getHours()%> :
							<%
								} else{%>
									<%=board.getBoardDate().getHours()%> :
							<%
								}
							%>
							
							<%
								if (board.getBoardDate().getMinutes() < 10) {
							%>
									0<%=board.getBoardDate().getMinutes()%>
							<%
								} else{
							%>
									<%=board.getBoardDate().getMinutes()%>
							<%	
								}
							%>
						</div>
					</div>
				</div>
				<div class="line"></div>
				<div class="etc-box">
					<div class="nick">
						<strong><%=board.getMemberId()%></strong>
					</div>
					<div class="good">
						<%-- <a href="./boardGoodCount.bo?num=<%=board.getBoardNum()%>"
								class="btn_likeit"> <span class="ico_heart"></span> <span
								class="cnt"><%=board.getBoardGood()%></span>
							</a> --%>
						<button onclick="count_good()">
							<span class="ico_heart"> </span> <span class="cnt"> <%=board.getBoardGood()%>
							</span>
						</button>

						<script>
							function count_good(){
									
									$.ajax({
											type: 'get',
										    url: './boardGoodCount.bo?num=<%=board.getBoardNum()%>',
											success : function(data) {
												$(".cnt").html(data);
											}
										});
							};
						</script>
					</div>
				</div>
				<div class="line"></div>
				<div class="content">
					<p>
						<%=board.getBoardContent()%>
					</p>
				</div>
			</div>

			<p align="right">
				<a href="./BoardList.bo"><button>목록</button></a>
				<%
					String logon_id = (String) session.getAttribute("id");
					if (logon_id != null && logon_id.equals(board.getMemberId())) {
				%>
				<a href="./BoardDelete.bo?num=<%=board.getBoardNum()%>"><button>삭제</button></a>
				<%
					}
				%>
			</p>
		</div>
	</div>



</body>
</html>

