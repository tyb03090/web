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
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<table border="1">
		<tr>
			<th>제목</th>
			<th>내용</th>
			<th>장르</th>
			<th>상영일</th>
			<th>관객수</th>
			<th>삭제</th>
		</tr>

		<%
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();

		String sql = "SELECT MI_NUM, MI_TITLE, MI_GENRE, MI_CREDAT, MI_CNT FROM MOVIE_INFO";
		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("MI_NUM")%></td>
			<td><a href="<%=root%>/movie2/movie-view.jsp?miNum=<%=rs.getInt("MI_NUM")%>"><%=rs.getString("MI_TITLE")%></a></td>
			<td><%=rs.getString("MI_GENRE")%></td>
			<td><%=rs.getString("MI_CREDAT")%></td>
			<td><%=rs.getString("MI_CNT")%></td>
			<td><button>삭제</button></td>
		</tr>
		<%
		}
		%>
		<tr>
		<td colspan="6" align="right"><button onclick="location.href='<%=root%>/movie2/movie-insert.jsp'">등록</button>
	</table>
</body>
</html>