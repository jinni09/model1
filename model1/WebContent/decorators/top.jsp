<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Model1</title>
</head>
<body>

	<hr size="1" color="black">

	<table width="100%">
		<tr>
			<td width="10%" align="left">
				<a href="main.jsp"><h2>Top.jsp</h2></a>
			</td>
			<%
				String m_no = (String) session.getAttribute("m_no");
				if (m_no == null || m_no == "") {
			%>
			<td width="80%" align="right"><a
				href="main.jsp?pgm=/member/login.jsp">Login</a> &nbsp; <a
				href="main.jsp?pgm=/member/join.jsp">Join</a></td>
			<%
				} else {
			%>
			<td width="80%" align="right"><a
				href="main.jsp?pgm=/member/mypagetemp.jsp">Mypage</a> &nbsp; <a
				href="main.jsp?pgm=/member/logout.jsp">Logout</a></td>
			<%
				}
			%>
		</tr>
	</table>

	<hr>

</body>
</html>