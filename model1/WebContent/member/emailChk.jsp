<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Model1</title>
<%
	String m_email = request.getParameter("m_email");
%>
<script type="text/javascript">
	function cl() {
		opener.frm.m_email.value = "<%=m_email%>";
		opener.frm.check.value = "true";
		window.close();
	}
</script>
</head>
<body>

	<%
		MemberDao md = MemberDao.getInstance();
		int result = md.emailCheck(m_email);
		if (result == 1) {
	%>
	
		이메일 : <%=m_email%><br>
		<font color="red">사용할 수 없습니다.</font>
		<p>
		<form>
			이메일 : <input type="email" name="m_email" required="required">
			<p>
				<input type="submit" value="확인">
		</form>
	<%
		} else {
	%>
		이메일 : <%=m_email%><br>
		<b>사용할 수 있습니다.</b>
		<p>
		<button onclick="cl()">창닫기</button>
	<%
		}
	%>
	
</body>
</html>