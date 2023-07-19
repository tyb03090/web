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
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<table border="1">
		<tr>
			<th>번호</th>
			<th>브랜드 이름</th>
			<th>타입</th>
			<th>소속 국가</th>
		</tr>
		<%
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT BL_NUM, BL_BRAND, BL_TYPE, BL_COUNTRY FROM BRAND_LIST";
		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("BL_NUM")%></td>
			<td><%=rs.getString("BL_BRAND")%></td>
			<td><%=rs.getString("BL_TYPE")%></td>
			<td><%=rs.getString("BL_COUNTRY")%></td>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="3" align="right"><button onclick="location.href='/web/brand/brand-insert.jsp'"></button>
		</tr>
	</table>

</body>
</html>