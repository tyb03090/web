<%@page import="java.sql.ResultSet"%>
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
<title>Game List</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<table border="1">
		<tr>
			<th>번호</th>
			<th>게임 이름</th>
			<th>가격</th>
		</tr>
		<%
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT G_NUM, G_NAME, G_PRICE FROM GAME";
		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("G_NUM")%></td>
			<td><a href="<%=root%>/game/game-view.jsp?gNum=<%=rs.getInt("G_NUM")%>"><%=rs.getString("G_NAME")%></td>
			<td><%=rs.getString("G_PRICE")%></td>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="4" align="right"><button onclick="location.href='/web/game/game-insert.jsp'">등록</button>
		</tr>
	</table>

</body>
</html>