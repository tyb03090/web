<%@page import="java.sql.ResultSet"%>
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
<title>게임 상세 화면</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String gNum = request.getParameter("gNum");

	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();

	String sql = "SELECT G_NUM, G_NAME, G_PRICE FROM GAME";
	sql += " WHERE G_NUM=" + gNum;
	ResultSet rs = stmt.executeQuery(sql);
	if (!rs.next()) {
	%>
	<script>
		alert('등록한 게임이 없는데숭 휴먼?');
		history.back();
	</script>
	<%
	return;
	}

	String gName = rs.getString("G_NAME");
	out.print(gName);
	%>
	<table border="1">
		<tr>
			<th>게임 이름</th>
			<td><%=rs.getString("G_NAME")%></td>
		</tr>
		<tr>
			<th>게임 가격</th>
			<td><%=rs.getString("G_PRICE")%></td>
		</tr>
		<tr>
			<th colspan="2"><button>수정</button> <button>삭제</button></th>
		</tr>
	</table>

</body>
</html>