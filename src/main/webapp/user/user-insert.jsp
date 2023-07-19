<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<h3>회원 가입</h3>
	<%
	String uiId = request.getParameter("uiId");
	
	if (uiId != null && uiId.length() != 0) {
		String uiPwd = request.getParameter("uiPwd");
		String uiName = request.getParameter("uiName");
		out.println("uiId : " + uiId);
		out.println("uiPwd : " + uiPwd);
		out.println("uiName : " + uiName);

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO USER_INFO(UI_ID, UI_PWD, UI_NAME)";
		sql += "values('" + uiId + "','" + uiPwd + "','" + uiName + "')";
		int result = stmt.executeUpdate(sql);

		if (result == 1) {
	%>
	<script>
		alert("화원가입을 성공했습니다! 게시물 목록으로 넘어가욧!");
		location.href = "/web/board/board-list.jsp";
	</script>
	<%
	}
	}
	%>
	<form>
		<table border="1">
			<label for="uiId">ID</label>
			<input type="text" id="uiId" name="uiId"><br>
			<label for="uiPwd">비밀번호</label>
			<input type="password" id="uiPwd" name="uiPwd"><br>
			<label for="uiName">이름</label>
			<input type="text" id="uiName" name="uiName"><br>
			<button>등록</button>
		</table>
	</form>

</body>
</html>