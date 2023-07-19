<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
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
	<h3>게임 추가</h3>
	<%
	String gName = request.getParameter("gName");
	if (gName != null && gName.length() != 0) {
		String gPrice = request.getParameter("gPrice");
		out.println("gName : " + gName);
		out.println("gPrice : " + gPrice);

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO GAME(G_NAME, G_PRICE)";
		sql += "values('" + gName + "','" + gPrice + "')";
		int result = stmt.executeUpdate(sql);

		if (result == 1) {
	%>
	<script>
		alert("게임 등록이 완료되었습니다! 게임 목록으로 넘어갑니다...");
		location.href = "/web/game/game-list.jsp";
	</script>
	<%
	}
	}
	%>
	<form>
		<table border="1">
			<tr>
				<th>게임 이름</th>
				<td><input type="text" id="gName" name="gName"></td>
			</tr>
			<tr>
				<th>게임 가격</th>
				<td><input type="text" id="gPrice" name="gPrice"></td>
			</tr>
			<tr>
				<th colspan="3"><button>등록</button>
		</table>
	</form>

</body>
</html>