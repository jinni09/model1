<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.*" %>
	
	<jsp:useBean id="mb" class="member.Member"></jsp:useBean>
	<jsp:setProperty property="*" name="mb" />
	<%
		MemberDao md = MemberDao.getInstance();
		int result = md.insert(mb);
		if (result > 0) {
	%>
	<script type="text/javascript">
		alert("회원가입 완료");
		location.href = "../decorators/main.jsp?pgm=/member/login.jsp";
	</script>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("회원가입 실패");
		history.go(-1);
	</script>
	<%
		}
	%>
