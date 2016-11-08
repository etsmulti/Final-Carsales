<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%
        request.setCharacterEncoding("UTF-8");
%>
<%@ page import="spring.mvc.model.*"%>
<%@ page import="java.util.*"%>
<%
        CarsaleBean csb = (CarsaleBean) request.getAttribute("carsale");
        MemberBean member = (MemberBean) request.getAttribute("member");
        CarMdetailBean carmd = (CarMdetailBean) request.getAttribute("carmdetail");
        String img = "img/carsale/"+request.getParameter("num")+"/";
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
<link rel=stylesheet href="css/global.css">
<style type="text/css">
#wrap {
        width: 1000px;
        height: 950px;
        margin: 0 auto;
        overflow: hidden;
}
#aside {
        width: 300px;
        height: 950px;
        float: left;
        background: white;
}
#content {
        width: 700px;
        height: 950px;
        float: left;
        background: white;
}
</style>
<script type="text/javascript">
        /* 큰사진 */
        function set_img(a) {
                document.img.src = a;
        }
</script>
</head>
<!--
        * 아이디 선택자
         - 특정한 id 속성을 가지고 있는 태그를 사용할 때 사용하는 선택자.
         - 웹 표준에서 id 속성은 웹페이지 내부에서 중복되면 안된다라는 규정이 있으므로
                아이디 선택자는 특정한 하나의 태그를 선택할 때 사용.
         - 공간 분할 태그(div)에 id 속성을 적용하고 레이아웃을 구성.
-->
<body>
        <div id="header">
                <jsp:include page="/resources/global/header.jsp"></jsp:include>
        </div>
        <div id="wrap">
                <h2><%=csb.getSaleTitle()%></h2>
                <div id="content">
                        <!-- 첫번째 기본 사진 -->
                        <img name="img" width="640" src="<%=img%>1.jpg">
                        <!-- 작은사진 -->
                        <table width="620" border="0">
                                                            <tr>
                              <td onmouseover = "set_img('<%=img%>1.jpg')">
                                <img  width="125px" src="<%=img%>1.jpg">
                              </td>
                              <td onmouseover = "set_img('<%=img%>2.jpg')" >
                                <img width="125px" src="<%=img%>2.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>3.jpg')" >
                                <img width="125px" src="<%=img%>3.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>4.jpg')" >
                                <img width="125px" src="<%=img%>4.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>5.jpg')" >
                                <img width="125px" src= "<%=img%>5.jpg"/>
                              </td>
                            </tr>
                          
                                                    <tr>
                              <td onmouseover = "set_img('<%=img%>6.jpg')">
                                <img  width="125px" src="<%=img%>6.jpg">
                              </td>
                              <td onmouseover = "set_img('<%=img%>7.jpg')" >
                                <img width="125px" src="<%=img%>7.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>8.jpg')" >
                                <img width="125px" src="<%=img%>8.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>9.jpg')" >
                                <img width="125px" src="<%=img%>9.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>10.jpg')" >
                                <img width="125px" src= "<%=img%>10.jpg"/>
                              </td>
                            </tr>
                          
                            <tr>
                              <td onmouseover = "set_img('<%=img%>11.jpg')">
                                <img  width="125px" src="<%=img%>11.jpg">
                              </td>
                              <td onmouseover = "set_img('<%=img%>12.jpg')" >
                                <img width="125px" src="<%=img%>12.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>13.jpg')" >
                                <img width="125px" src="<%=img%>13.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>14.jpg')" >
                                <img width="125px" src="<%=img%>14.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>15.jpg')" >
                                <img width="125px" src= "<%=img%>15.jpg"/>
                              </td>
                            </tr>
                          
                            <tr>
                              <td onmouseover = "set_img('<%=img%>16.jpg')">
                                <img  width="125px" src="<%=img%>16.jpg">
                              </td>
                              <td onmouseover = "set_img('<%=img%>17.jpg')" >
                                <img width="125px" src="<%=img%>17.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>18.jpg')" >
                                <img width="125px" src="<%=img%>18.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>19.jpg')" >
                                <img width="125px" src="<%=img%>19.jpg"/>
                              </td>
                              <td onmouseover = "set_img('<%=img%>20.jpg')" >
                                <img width="125px" src= "<%=img%>20.jpg"/>
                              </td>
                            </tr>              
                          
                        </table>
                </div>
                <div id="aside">
                        <h4>판매 차량 정보</h4>
                        <table class="detailright" style="width: 100%" cellspan="5">
                                <tr>
                                        <td width="30%">가격</td>
                                        <td><%=csb.getSaleCarPrice()%>만원</td>
                                </tr>
                                <tr>
                                        <td width="30%">주행거리</td>
                                        <td><%=csb.getSaleUseKm()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">연식</td>
                                        <td><%=csb.getSaleBuycarDate()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">연료</td>
                                        <td><%=carmd.getCarOil()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">배기량</td>
                                        <td><%=carmd.getCarCc()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">변속기</td>
                                        <td><%=carmd.getCarTrans()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">색상</td>
                                        <td><%=csb.getSaleCarColor()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">제조사</td>
                                        <td><%=carmd.getCarCorpname()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">모델명</td>
                                        <td><%=carmd.getCarModelname()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">제조판매가</td>
                                        <td><%=carmd.getCarMprice()%>만원</td>
                                </tr>
                                <tr>
                                        <td width="30%">토크</td>
                                        <td><%=carmd.getCarTorque()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">마력</td>
                                        <td><%=carmd.getCarHp()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">전장</td>
                                        <td><%=carmd.getCarLength()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">넓이</td>
                                        <td><%=carmd.getCarWidth()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">전고</td>
                                        <td><%=carmd.getCarHeight()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">차량번호</td>
                                        <td><%=csb.getSaleCarNumber()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">최초등록일</td>
                                        <td><%=csb.getSaleInputDate()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">조회수</td>
                                        <td><%=csb.getSaleReadcount()%></td>
                                </tr>
                        </table>
                        <h4>판매자 정보</h4>
                        <table class="detailright2" style="width: 100%" cellspan="5">
                                <tr>
                                        <td width="30%">판매자</td>
                                        <td><%=member.getMemberName()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">휴대폰</td>
                                        <td><%=member.getMemberMobile()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">전화번호</td>
                                        <td><%=member.getMemberPhone()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">email</td>
                                        <td><%=member.getMemberEmail()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">주소1</td>
                                        <td><%=member.getMemberAddr1()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">주 소2</td>
                                        <td><%=member.getMemberAddr2()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">모델번호</td>
                                        <td><%=carmd.getCarDetailNum()%></td>
                                </tr>
                                <tr>
                                        <td width="30%">판매번호</td>
                                        <td><%=csb.getSaleNum()%></td>
                                </tr>
                        </table>
                </div>
        </div>
        <div id="salecontent">
                <pre color="white"><%= csb.getSaleContent()%></pre>
        </div>
                <div class="photoarea"><img src="<%=img%>1.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>2.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>3.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>4.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>5.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>6.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>7.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>8.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>9.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>10.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>11.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>12.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>13.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>14.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>15.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>16.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>17.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>18.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>19.jpg" width="640"    alt="차량사진" ></div><br>
                <div class="photoarea"><img src="<%=img%>20.jpg" width="640"    alt="차량사진" ></div><br>
                
        
        <div class="footer">
                <jsp:include page="/resources/global/footer.jsp"></jsp:include>
        </div>
</body>
</html>