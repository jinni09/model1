<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.*" %>
<%@ include file="../session/sessionChk.jsp" %>

	<jsp:useBean id="mb" class="member.Member"></jsp:useBean>
	<jsp:setProperty property="*" name="mb" />
	<%
		MemberDao md = MemberDao.getInstance();
		int result = md.update(mb);
		if (result > 0) {
	%>
	<script type="text/javascript">
		alert("수정 완료");
		location.href = "../decorators/main.jsp?pgm=/member/mypagetemp.jsp";
	</script>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("수정 실패");
		history.go(-1);
	</script>
	<%
		}
	%>
