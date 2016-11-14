<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="spring.mvc.model.*"%>
<%@ page import="java.util.*"%>
<%
	String id = (String) session.getAttribute("id");
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

<script>
	function test() {
		$(".test").val = $(".saleBuycarDate").val;
	}
</script>
<style type="text/css">
	table{
		border-top: 1px solid #dbdbdb;
	    border-collapse: collapse;
	    width: 90% auto;
	    border-top: 2px solid #aaafbc;
	    border-bottom: 1px solid #ccc;
	    font-size: 12px;
	    margin-bottom: 30px;
	}

</style>

<link rel=stylesheet href="./resources/css/global.css">
<link rel=stylesheet href="./resources/css/listview.css">

<style type="text/css">
#wrap {
	width: 100%;
	height: 950px;
	margin: 10 auto;
	overflow: hidden;
}

/* #aside {
	width: 300px;
	height: 950px;
	float: left;
	background: white;
} */
#content {
	width: 100%;
	height: 1950px;
	float: left;
	background: white;
}
</style>


</head>

<body>

	<div id="header">
		<jsp:include page="/resources/global/header.jsp"></jsp:include>
	</div>

	<div id="wrap">
		<div class="search">
			<jsp:include page="../searcher/searcher.jsp"></jsp:include>
		</div>
		<div id="content">
			<h3>판매할 자동차 내역 등록</h3>
			<form name="saleinput" action="./CarsaleInsertProcess.cs"
				method="post">
					<table>
						<tr class="imgrow1" height="50">
							<td width="15%">
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;판매 제목 :</h4>
							</td>
							<td width="35%"><input type="text" name="saleTitle"
								size="40"></td>
							<td width="18%">
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;차량모델 :</h4>
							</td>
							<td width="42%"><input type="text" name="carDetailNum"
								id="carDetailNum" size="20"></td>
						</tr>

						<tr class="imgrow1" height="50">
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;차량 번호 :</h4>
							</td>
							<td><input type="text" name="saleCarNumber" size="20">
							</td>
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;등록자 ID :</h4>
							</td>
							<td><input type="text" name="memberId" size="20"
								value="<%=id%>"></td>
						</tr>

						<tr class="imgrow1" height="50">
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;차량 색상 :</h4>
							</td>
							<td><input type="text" name="saleCarColor" size="20">
							</td>
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;판매 가격 :</h4>
							</td>
							<td><input type="text" name="saleCarPrice" size="20">&nbsp;&nbsp;&nbsp;&nbsp;만원
							</td>
						</tr>
						<tr class="imgrow1" height="50">
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;주행 거리 :</h4>
							</td>
							<td><input type="text" name="saleUseKm" size="20"></td>
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;구입일 (연식) :</h4>
							</td>
							<td><input type="month" name="saleBuycarDate"></td>
						</tr>
						<tr class="imgrow1" height="250">
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;내용 입력 :</h4>
							</td>
							<td colspan="3"><textarea rows="10" cols="120"
									name="saleContent"></textarea></td>
						</tr>
						<tr class="imgrow1" height="50">
							<td>
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;저 장 :</h4>
							</td>
							<td><input type="submit" value="저        장"></td>
						</tr>
					</table>
			</form>

		</div>

	</div>


	<div class="footer">
		<jsp:include page="/resources/global/footer.jsp"></jsp:include>
	</div>
</body>
</html>