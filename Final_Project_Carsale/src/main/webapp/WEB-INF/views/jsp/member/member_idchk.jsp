<%@ page contentType="text/html; charset=utf-8" %>
<%
	String id1=(String)request.getAttribute("id1");
	int check=((Integer)(request.getAttribute("check"))).intValue();
%>
<html>
<head>
<title>중복 확인</title>
<script>
function windowclose(){
	opener.document.joinform.id.value="<%=id1 %>";
	self.close();
}
</script>
</head>
<body bgcolor="#f5f5f5">
<% if(check == 1){ %>
<table>
	<tr align="center">
	<td height="30">
		<font size="2"><%=id1 %> 는 이미 사용 중인 아이디입니다.</font>
	</td>
	</tr>
</table>

<form action="./MemberIDCheckAction.me" method="post" name="checkForm" >
<table>
	<tr>
	<td align="center">
		<font size="2">다른 아이디를 선택하세요.</font><p>
		<input type="text" size="10" maxlength="12" name="id"/>
		<input type="submit" value="중복확인" />
	</td>					
	</tr>
</table>
</form>
<% }else{ %>
<table>
	<tr>
		<td align="center">
		<font size="2">입력하신 <%= id1 %> 는 사용할 수 있는 아이디입니다.</font>
		<br/><br/>
		<input type="button" value="닫기" onclick="windowclose()" />
		</td>
	</tr>
</table>
<% } %>
</body>
</html>