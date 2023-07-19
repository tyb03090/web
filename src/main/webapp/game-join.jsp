<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game</title>
</head>
<body>
	<jsp:include page="/include/header.jsp"></jsp:include>
	<h3>게임</h3>
	<%
	String gName = request.getParameter("gName");
	
	if(gName != null && gName.length() != 0){
		String gPrice = request.getParameter("gPrice");
		out.println("gName : " + gName);
		
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO GAME(G_NAME, G_PRICE)";
		sql += "values('" + gName + "','" + gPrice + "')";
		int result = stmt.executeUpdate(sql);
		if(result == 1) {
			%>
			<script>
			alert("<%=gName%>이 등록되었습니다. 메인화면으로 넘어갑니다.");
			location.href = "/web/";
			</script>
			<%
		}
	}
	%>
	<form>
	<label for="gName">게임이름</label>
	<input type="text" id="gName" name="gName"><br>
	<label for="gPrice">가격</label>
	<input type="text" id="gPrice" name="gPrice"><br>
	<button>등록</button>
	</form>
</body>
</html>