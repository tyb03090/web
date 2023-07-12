<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAME</title>
<link rel="icon" type="image/x-icon" href="/web/images/favicon.ico">
</head>
<body>
	<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/kd";
	String user = "root";
	String password = "kd1824java";

	Connection con = DriverManager.getConnection(url, user, password);
	Statement stmt = con.createStatement();

	String sql = "SELECT * FROM GAME";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>가격</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		
		<%="<tr>" %>
		<%="<td>" + rs.getInt("G_NUM") + "</td>" %>
		<%="<td>" + rs.getString("G_NAME") + "</td>" %>
		<%="<td>" + rs.getInt("G_PRICE") + "</td>" %>
		<%="</tr>" %>
		
		<%
		}
		%>
		<tr>
			<td colspan="4" align="center"><button>초기화</button></td>
		</tr>
	</table>
</body>
</html>