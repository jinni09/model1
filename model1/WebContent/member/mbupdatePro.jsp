<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.*" %>
<%@ include file="../session/sessionChk.jsp" %>
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
	
</body>
</html>