<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.*" %>

	<jsp:useBean id="mb" class="member.Member"></jsp:useBean>
	<jsp:setProperty property="*" name="mb" />
	<%
		MemberDao md = MemberDao.getInstance();
		int result = md.loginChk(mb.getM_email(), mb.getM_passwd());
		if (result > 0) {
			session.setAttribute("m_no", result+"");
			response.sendRedirect("../decorators/main.jsp");
		} else if (result == 0) {
	%>
	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다.");
		history.go(-1);
	</script>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("아이디를 확인해주세요.");
		history.go(-1);
	</script>
	<%
		}
	%>