<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 게시판</title>

<style type="text/css">
    table{
        width:70%;
       
    }
</style>

</head>
<body>
    
    <form name="delete" action="./boardDelete.bo?num=<%=num %>" 
	method="post">
    <table>

        <tr>
	        <td colspan=2 align=center>
		        <a href="javascript:delete.submit()">삭제</a>
		         &nbsp;&nbsp;
		        <a href="javascript:history.go(-1)">돌아가기</a>
	       </td>
        </tr>
     </table>
     
     
     </form>
     <tr bgcolor="cccccc">
         <td colspan="2" style="height:1px;"></td>
	 </tr>
    
</body>
</html>