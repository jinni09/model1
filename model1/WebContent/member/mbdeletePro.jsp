<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.*" %>
<%@ include file="../session/sessionChk.jsp" %>

	<%
		String m_passwd = request.getParameter("m_passwd");
		MemberDao md = MemberDao.getInstance();
		int chk = md.passwdChk(m_no, m_passwd);
		if (chk == 1) {
			int result = md.delete(Integer.parseInt(m_no));
			if (result > 0) {
				session.invalidate();
	%>
	<script type="text/javascript">
		alert("탈퇴 완료");
		location.href = "../decorators/main.jsp";
	</script>
	<%
		}
		} else {
	%>
	<script type="text/javascript">
		alert("비밀번호를 확인해주세요.");
		history.go(-1);
	</script>
	<%
		}
	%>
