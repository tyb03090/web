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
	<h3>영화 등록</h3>
	<%
	String miTitle = request.getParameter("miTitle");

	if (miTitle != null && !miTitle.isEmpty()) {

		String miDesc = request.getParameter("miDesc");
		String miGenre = request.getParameter("miGenre");
		String miCredat = request.getParameter("miCredat");
		String miCnt = request.getParameter("miCnt");

		Connection con = DBCon.getCon();
		String sql = "INSERT INTO MOVIE_INFO(MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT)";
		sql += " VALUES(?, ?, ?, ?, ?)";

		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, miTitle);
		pstmt.setString(2, miDesc);
		pstmt.setString(3, miGenre);
		pstmt.setString(4, miCredat);
		pstmt.setString(5, miCnt);

		int result = pstmt.executeUpdate();
		if (result == 1) {
	%>
	<script>
			alert('정상적으로 등록이 되었습니다!');
			location.href='<%=root%>/movie2/movie-list.jsp';
	</script>
	<%
		}
	}
	%>
	<form>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" placeholder="제목" id="miTitle"
				name="miTitle"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea placeholder="내용" id="miDesc"
			name="miDesc" style="resize: none" cols="30" rows="15"></textarea>
			</td>
		</tr>
		<tr>
			<th>장르</th>
			<td>
				<select id="miGenre" name="miGenre">
					<option value="">장르</option>
					<option value="코미디">코미디</option>
					<option value="액션">액션</option>
					<option value="스릴러">스릴러</option>
					<option value="호러">호러</option>
				</select>
			</td>
		<tr>
			<th>상영일</th>
			<td><input type="date" id="miCredat" name="miCredat"></td>
		</tr>
		<tr>
			<th>관객수</th>
			<td><input type="number" id="miCnt" name="miCnt"></td>
		</tr>
		<tr>
			<td colspan="2"><button>등록</button>
	</table>
	</form>
</body>
</html>