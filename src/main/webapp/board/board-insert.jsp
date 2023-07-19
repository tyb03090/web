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
<title>게시물 등록</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<h3>게시물 작성</h3>
	<%
	String biTitle = request.getParameter("biTitle");
	
	if(biTitle != null && biTitle.length() != 0){
		String biContent = request.getParameter("biContent");
		String biName = request.getParameter("biWriter");
		out.println("biTitle : " + biTitle);
		out.println("biContent : " + biContent);
		out.println("biWriter : " + biName);
		
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO BOARD_INFO(BI_TITLE, BI_CONTENT, BI_WRITER, BI_CREDAT, BI_CNT)";
		sql += " values('" + biTitle + "','" + biContent + "','" + biName + "',now(), 0)";
		int result = stmt.executeUpdate(sql);
		
		if(result == 1){
			%>
			<script>
			alert("게시물이 등록되었습니다!! 메인화면으로 넘어가욧!");
			location.href="/web/board/board-list.jsp";
			</script>
			<%
		}
	}
	%>
	<form>
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" id="biTitle" name="biTitle"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="biContent" name="biContent"
						style="resize: none" cols="30" rows="15"></textarea></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" id="biWriter" name="biWriter"></td>
			</tr>
			<tr>
				<th colspan="2"><button>등록</button>
		</table>
		
	</form>
</body>
</html>