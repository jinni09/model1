<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="../session/sessionChk.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Model1</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>
</head>
<body>
	
	<table class="tab">
		<caption>마이페이지</caption>
		<tr>
			<td> <a href="main.jsp?pgm=/member/mypagetemp.jsp?mypgm=/member/myinfo.jsp" > 내정보보기 </a> </td>
		</tr>
		<tr>
			<td> <a href="main.jsp?pgm=/member/mypagetemp.jsp?mypgm=/member/mbupdate.jsp" > 회원정보수정 </a> </td>
		</tr>
		<tr > 
			<td> <a href="main.jsp?pgm=/member/mypagetemp.jsp?mypgm=/member/mbdelete.jsp"> 회원탈퇴 </a> </td>	
		</tr>
	</table>

</body>
</html>