<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.*, java.util.*" %>
<%@ include file="../session/sessionChk.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Model1</title>
</head>
<body>
	<%
		MemberDao md = MemberDao.getInstance();
		Member mb = md.infoselect(m_no);
	%>
	<table class="tab">
		<caption>내정보보기</caption>
		<tr height="40%">
			<td colspan="2"><img alt="pic" src="../img/info.jpg"
				height="150"></td>
		</tr>
		<tr height="15%">
			<td class="title">이메일</td>
			<td><%=mb.getM_email()%></td>
		</tr>
		<tr height="15%">
			<td class="title">닉네임</td>
			<td><%=mb.getM_nick()%></td>
		</tr>
	</table>

</body>
</html>