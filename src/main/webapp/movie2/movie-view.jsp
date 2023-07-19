<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<%
	String miNum = request.getParameter("miNum");
	if (miNum != null && !miNum.isEmpty()) {

		Connection con = DBCon.getCon();
		String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM MOVIE_INFO WHERE MI_NUM = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, miNum);

		ResultSet rs = pstmt.executeQuery();

		if (!rs.next()) {
	%>
	<script>
			alert('없는 정보입니다.');
			location.href='<%=root%>/movie2/movie-list.jsp';
	</script>
	<%
	}
	%>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><%=rs.getString("MI_TITLE")%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><%=rs.getString("MI_DESC")%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><%=rs.getString("MI_DESC")%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><%=rs.getString("MI_DESC")%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><%=rs.getString("MI_DESC")%></td>
		</tr>
	</table>
	<%
	}
	%>
</body>
</html>