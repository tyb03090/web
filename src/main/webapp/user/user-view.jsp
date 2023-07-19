<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 상세 정보</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String uiNum = request.getParameter("uiNum");

	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT UI_NUM, UI_ID, UI_PWD, UI_NAME FROM USER_INFO";
	sql += " WHERE UI_NUM=" + uiNum;
	ResultSet rs = stmt.executeQuery(sql);

	if (!rs.next()) {
	%>
	<script>
		alert('없는 사용자입니다.');
		history.back();
	</script>
	<%
	return;
	}

	String uiId = rs.getString("UI_ID");
	out.print(uiId);
	%>
	<table border="1">
		<tr>
			<th>사용자 ID</th>
			<td><%=rs.getString("UI_ID")%></td>
		</tr>
		<tr>
			<th>사용자 비밀번호</th>
			<td><%=rs.getString("UI_PWD")%></td>
		</tr>
		<tr>
			<th>사용자 이름</th>
			<td><%=rs.getString("UI_NAME")%></td>
		</tr>
		<tr>
			<th colspan="2"><button>수정</button> <button>삭제</button>
		</tr>
	</table>

</body>
</html>