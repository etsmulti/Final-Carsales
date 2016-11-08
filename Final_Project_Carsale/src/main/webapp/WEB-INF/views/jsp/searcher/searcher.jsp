<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.getAttributeNames();
%>

<link rel=stylesheet href="./resources/css/searcher.css">
<script src="./resources/script/searcher.js"></script>

<div class="note" align="center">
	<form id="searchFrm" name="searchFrm" method="post">
		<input type="hidden" id="dmaker" name="dmaker" value="" /> <input
			type="hidden" id="dmodel" name="dmodel" value="" /> <input
			type="hidden" id="ddetail" name="ddetail" value="" />
	</form>

	<!-- 내차팔기 -->
	<div class="sellqna">
		<div class="sell_mycar" align="left">
			<h2>내차팔기</h2>
			<ul>
				<li class="po"><a href="">개인 차량판매</a></li>
				<li class="po"><a href="">딜러 차량광고</a></li>
				<li><a href="">신속하게 판매하는 방법</a></li>
				<li><a href="">전문가의 도움을 받는 방법</a></li>
			</ul>
		</div>
		<!-- //내차팔기 -->
		<!-- QnA -->
		<div class="qna" align="left">
			<h2>Q&amp;A</h2>
			<ul>
				<li><a href="">좋은 중고차는 어떤 차량인가요?</a></li>
				<li><a href="">허위매물인지 어떻게 구분하나요?</a></li>
				<li><a href="">사고차의 기준과 내용을 알려주세요.</a></li>
			</ul>
		</div>
	</div>
	<!--// QnA -->
	<!-- 매물검색 -->


	<div class="index_sch">
		<div class="indexSch">
			<h2>매물 검색</h2>
			<div class="searcher">
				<ul class="tab">
					<li><a href="#domestic" class="selected"><span><strong>국산차</strong></span></a></li>
					<li><a href="#overseas"><span><strong>수입차</strong></span></a></li>

				</ul>
				<ul class="panel">
					<li class="domestic" id="domestic">
						<div class="maker" onclick="viewTestSch(0);return false;">
							<strong><span id="smaker">제조사</span></strong>
						</div>
						<div class="model" onclick="viewTestSch(1);return false;">
							<strong><span id="smodel">모델</span></strong>
						</div>
						<div class="detail" onclick="viewTestSch(2);return false;">
							<strong><span id="sdetail">상세 모델</span></strong>
						</div>
					</li>

					<li class="overseas" id="overseas">
						<div class="maker" onclick="viewTestSch(3);return false;">
							<strong><span id="smaker">제조사</span></strong>
						</div>
						<div class="model" onclick="viewTestSch(4);return false;">
							<strong><span id="smodel">모델</span></strong>
						</div>
						<div class="detail" onclick="viewTestSch(5);return false;">
							<strong><span id="sdetail">상세 모델</span></strong>
						</div>
					</li>
				</ul>
			</div>

			<div class="btn">
				<a id="scnBtn" href="javascript:goSearch();">검색</a>
			</div>
		</div>

	</div>
	<div class="maxim">
		<h2>OSCAR 매거진</h2>
		<ul>
			<li><a
				href="http://www.encarmagazine.com/news/newcar3/view/56253?WT.hit=p_01_02">
					<span class="txt"><strong>험비의 미래형, 쉐보레 콜로라도 ZH2
							연료전지 군용차 개발 중</strong></span> <span class="img"> <img
						src="http://img.encar.com/carsdata/index/work-010.jpg" />
				</span>
			</a></li>
			<li><a
				href="http://www.encarmagazine.com/board/view/888?WT.hit=p_01_02">
					<span class="txt"><strong>독일 잡지가 측정한 티볼리와 투싼 성능 비교</strong>
				</span> <span class="img"> <img
						src="http://img.encar.com/carsdata/index/Em-001.jpg" />
				</span>
			</a></li>
			<li><a
				href="http://www.encarmagazine.com/news/news1/view/56300?WT.hit=p_01_02">
					<span class="txt"><strong>현대차 비어만, “8단 DCT 개발 끝, 당장
							적용 가능”</strong></span> <span class="img"> <img
						src="http://img.encar.com/carsdata/index/i30-albert-biermann.jpg" />
				</span>
			</a></li>
		</ul>
	</div>
	<div class="viewList" id="corpList" style="display: none"></div>
	<div class="viewList" id="modelList" style="display: none"></div>
	<div class="viewList" id="detailList" style="display: none"></div>
</div>