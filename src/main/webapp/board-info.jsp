<%@page import="java.util.Date"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp"></jsp:include>
	<h3>게시판 등록</h3>
	<%
	String biWriter = request.getParameter("biWriter");
	if (biWriter != null && biWriter.length() != 0) {
		String biTitle = request.getParameter("biTitle");
		String biContent = request.getParameter("biContent");
		String biCnt = request.getParameter("biCnt");
		out.println("biWriter : " + biWriter);
		out.println("biTitle : " + biTitle);
		out.print("biContent : " + biContent);

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO BOARD_INFO(BI_WRITER, BI_TITLE, BI_CONTENT, BI_CREDAT, BI_CNT)";
		sql += "values('" + biWriter + "','" + biTitle + "','" + biContent + "',now(),'" + biCnt +  "')";
		int result = stmt.executeUpdate(sql);
		if (result == 1) {
	%>
	<script>
		alert("<%=biWriter%>
		님의 게시물이 등록되었습니다. 게시물 목록으로 넘어갑니다.");
		location.href = "/web/board.jsp";
	</script>
	<%
	}
	}
	%>
	<form>
		<label for="biWriter">작성자</label>
		<input type="text" id="biWriter" name="biWriter"><br>
			<label for="biTitle">제목</label>
			<input type="text" id="biTitle" name="biTitle"><br>
			<label for="biContent">내용</label>
			<input type="text" id="biContent" name="biContent"><br>
			<label for="biCnt">조회수</label>
			<input type="text" id="biCnt" name="biCnt"><br>
			<button>등록</button>
	</form>

</body>
</html>