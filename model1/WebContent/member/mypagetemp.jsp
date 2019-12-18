<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../session/sessionChk.jsp" %>
	
	<%
		String mypgm = request.getParameter("mypgm");
		if (mypgm == null || mypgm == "") {
			mypgm = "myinfo.jsp";
		}
	%>

	<table align="center" width="100%">
		<tr>
			<td width="20%" height="50"><jsp:include page="mypage.jsp" /></td>
			<td width="80%" class="mypagetemp"><jsp:include page="<%=mypgm%>" /></td>
		</tr>
	</table>