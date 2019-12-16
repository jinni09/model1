<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Model1</title>
</head>
<body>
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
</body>
</html>