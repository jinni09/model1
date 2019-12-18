<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<hr size="1" color="black">

	<table class="t100">
		<tr>
			<td width="10%" align="left">
				<h2><a href="main.jsp">Top.jsp</a></h2>
			</td>
			<%
				String m_no = (String) session.getAttribute("m_no");
				if (m_no == null || m_no == "") {
			%>
			<td width="80%" align="right">
				<a href="main.jsp?pgm=/member/login.jsp">Login</a> &nbsp; 
				<a href="main.jsp?pgm=/member/join.jsp">Join</a>
			</td>
			<%
				} else {
			%>
			<td width="80%" align="right">
				<a href="main.jsp?pgm=/member/mypagetemp.jsp">Mypage</a> &nbsp; 
				<a href="main.jsp?pgm=/member/logout.jsp">Logout</a>
			</td>
			<%
				}
			%>
		</tr>
	</table>
