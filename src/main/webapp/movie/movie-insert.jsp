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
	<h3>영화 등록</h3>
	<%
	String miTitle = request.getParameter("miTitle");

	if (miTitle != null && miTitle.length() != 0) {
		String miDesc = request.getParameter("miDesc");
		String miGenre = request.getParameter("miGenre");
		String miCredat = request.getParameter("miCredat");
		String miCnt = request.getParameter("miCnt");

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO MOVIE_INFO(MI_TITLE, MI_DESC, MI_GENRE)";
		sql += " values('" + miTitle + "','" + miDesc + "','" + miGenre + "')";

		int result = stmt.executeUpdate(sql);

		if (result == 1) {
	%>
	<script>
			alert('영화 등록이 완료되었습니다.');
			location.href="<%=root%>/movie/movie-list.jsp";
	</script>
	<%
	}
	}
	%>
	<form>
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" placeholder="제목" id="miTitle" name="miTitle"></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><textarea placeholder="설명" id="miDesc" name="miDesc" style="resize: none" cols="30" rows="15"></textarea></td>
			</tr>
			<tr>
				<th>장르</th>
				<td>
					<select id="miGenre" name="miGenre">
						<option value="">장르</option>
						<option value="코미디">코미디</option>
						<option value="S/F">S/F</option>
						<option value="스릴러">스릴러</option>
						<option value="드라마">드라마</option>
					</select>
				</td>
			</tr>
			<tr>
			<th colspan="2"><button>등록</button>
		</table>
	</form>
</body>
</html>