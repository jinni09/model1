<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../session/sessionChk.jsp" %>
	
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
