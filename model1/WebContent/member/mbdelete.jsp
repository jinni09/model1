<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../session/sessionChk.jsp" %>

<script type="text/javascript">
	function dechk() {
		var aa = confirm("정말로 탈퇴하시겠습니까?");
		if (aa) {
			return true;
		} else {
			return false;
		}
	}
</script>

	<form name="frm" action="../member/mbdeletePro.jsp" method="post" onsubmit="return dechk()">
		<table class="tab">
			<caption>회원탈퇴</caption>
			<tr>
				<td class="title"><font class="red">*</font>암호</td>
				<td><input type="password" name="m_passwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="확인">
					&nbsp; <input type="button" value="취소" onclick="location.href='../decorators/main.jsp?pgm=/member/mypagetemp.jsp'"></td>
			</tr>
		</table>
	</form>
