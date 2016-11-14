<%@page import="javafx.scene.control.Alert"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="spring.mvc.model.*"%>
<%
	ArrayList<CarsaleBean> carsaleList = (ArrayList<CarsaleBean>) request.getAttribute("carsaleList");
	ArrayList<CarCorpBean> carcorpList = (ArrayList<CarCorpBean>) request.getAttribute("carcorpList");
	ArrayList<CarModelBean> carmodelList = (ArrayList<CarModelBean>) request.getAttribute("carmodelList");
	ArrayList<CarMdetailBean> cardetailList = (ArrayList<CarMdetailBean>) request.getAttribute("cardetailList");
	String img = "img/carsale/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자동차 검색</title>

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
<link rel=stylesheet href="./resources/css/listview.css">


<!-- CSS, Script End -->

</head>
<body>
	<jsp:include page="/resources/global/header.jsp"></jsp:include>

	<!-- 헤더 끝 -->
	<div class="container">
		<div class="search">
			<jsp:include page="../searcher/searcher.jsp"></jsp:include>
		</div>

		<div class="listview">
			<strong>판매차 리스트</strong>
			<table>
				<colgroup>
					<col class="img">
				</colgroup>
				<thead>
					<tr>
						<th colspan="2">차량 정보</th>
						<th>연식</th>
						<th>주행거리</th>
						<th>가격</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<%
						if(carsaleList.size()==0){
					%>
							<tr class="content" align="center">
								<td colspan="6">게시물이 없습니다.</td>
							</tr>
					<%
						}
					%>
				
					<%
						int i, j;
						for (i = 0; i < carsaleList.size(); i++) {
							CarsaleBean csb = carsaleList.get(i);
							CarCorpBean ccb = null;
							CarModelBean cmb = null;
							CarMdetailBean cdb = null;

							for (j = 0; j < cardetailList.size(); j++) {
								if (csb.getCarDetailNum().equals(cardetailList.get(j).getCarDetailNum())) {
									cdb = cardetailList.get(j);
									break;
								}
							}
							/* 
							for (j = 0; j < carmodelList.size(); j++) {
								System.out.println(cdb.getCarModelNum());

								System.out.println(carmodelList.get(j).getCarmodelNum());
								if (cdb.getCarModelNum().equals(carmodelList.get(j).getCarmodelNum())) {
									cmb = carmodelList.get(j);
									break;
								}
							}
							for (j = 0; j < carcorpList.size(); j++) {
								if (cmb.getCarCorpNum().equals(carcorpList.get(j).getCarcorpNum())) {
									ccb = carcorpList.get(j);
									break;
								}
							}  */
					%>

					<tr>
						<td><img src="<%=img%>/<%=csb.getSaleNum()%>/1.jpg" /></td>
						<td class="carInfo"><a
							href="./CarsaleDetail.cs?num=<%=csb.getSaleNum()%>"><span
								class="title"><%=csb.getSaleTitle()%></span></a> <span
							class="status"> <span class="trans"> <%-- <%=cdb.getCarTrans()%> --%>오토
							</span> <span class="oil"> <%-- <%=cdb.getCarOil()%> --%>가솔린
							</span>

						</span> <span class=""> <!-- hotmark -->
						</span></td>
						<td class="yer">
						<%=csb.getSaleBuycarDate().getYear()+1900%>년
						<%=csb.getSaleBuycarDate().getMonth()%>월</td>
						<td class="km"><%=csb.getSaleUseKm()%> km</td>
						<td class="price"><strong><%=csb.getSaleCarPrice()%></strong> 만원</td>
						<td>
						<%=csb.getSaleInputDate().getYear()+1900%>
						.<%=csb.getSaleInputDate().getMonth()+1%>
						.<%=csb.getSaleInputDate().getDate()%>
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<div class="footer"></div>
</body>
</html>