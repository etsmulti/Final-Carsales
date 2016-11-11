<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String memberId = (String)session.getAttribute("id");
	boolean login = memberId == null?false:true;
%>
<script>
function goSearch(){
	 $("#searchFrm").attr({
        "action" : "/CarsaleList.cs",
        "method" : "get"
    });
	$("#searchFrm").submit();
}
</script>
<div class="header">
	<h1>
		<a href="./"><img src='./resources/img/header_logo.jpg' /></a>
	</h1>
	<ul class="gnb">
		<li><a href="./CarsaleList.cs?dmaker=&dmodel=&ddetail=" class="gnb1" title="검색"><strong>매물
					검색</strong></a></li>
		<li><a href=# class="gnb2" title="내차 판매"><strong>내차 판매</strong></a></li>
		<li><a href="./boardList.bo" class="gnb3" title="자유 게시판"><strong>자유
					게시판</strong></a></li>
	</ul>
	<% if(login){ %>
	<ul class="util">
		<li class="id"><strong><%=memberId%></strong>님 환영합니다.</li>
		<li><a href="./MemberLogout.me" class="logout" title="로그아웃">로그아웃</a></li>
	</ul>
	<% } else{ %>
	<ul class="util">
		<li><a href="./MemberLogin.me" class="login" title="로그인">로그인</a></li>
		<li><a href="./MemberJoin.me" class="join" title="회원가입">회원가입</a></li>
	</ul>
	<% } %>
</div>