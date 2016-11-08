<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CarSales</title>

<!-- CSS, Script -->
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
<!-- CSS, Script End -->

</head>
<body>
	<jsp:include page="/resources/global/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="./resources/img/caro1.jpg" alt="롤스로이스" width="100%">
					<div class="carousel-caption">
						<!-- <h1>
							<b>OSCAR</b>
						</h1>
						<h2>Dream Car. 더 이상 당신의 Dream이 아닙니다. </h2> -->
					</div>
				</div>

				<div class="item">
					<img src="./resources/img/caro2.jpg" alt="람보르기니" width="100%">
					<div class="carousel-caption">
						<!-- <h1>
							<b>쏘카</b>
						</h1>
						<h2>고객은 왕이다.</h2> -->
					</div>
				</div>

				<div class="item">
					<img src="./resources/img/caro3.jpg" alt="Los Angeles" width="100%"
						height="400px">
					<div class="carousel-caption">
						<!-- <h1>
							<b>쏘카</b>
						</h1>
						<h2>쏘카가 당신을 응원합니다.</h2> -->
					</div>
				</div>

				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!-- Carousel End  -->
		</div>

		<div class="search">
			<jsp:include page="/WEB-INF/views/jsp/searcher/searcher.jsp"></jsp:include>
		</div>
	</div>
	<!-- 컨테이너 끝 -->

	<div class="footer">
		<jsp:include page="/resources/global/footer.jsp"></jsp:include>
	</div>
	<!-- 푸터 끝 -->
</body>
</html>
