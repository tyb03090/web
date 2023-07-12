<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Integer> lotto = new ArrayList<>();
	Random r = new Random();
	for (int i = 0; i <= 6; i++) {
		lotto.add(r.nextInt(45) + 1);
	}
	%>
	<table border="1">
		<%
		for (int i = 0; i < lotto.size(); i++) {
		%>

		<tr>
			<td><%=lotto.get(i)%></td>
		</tr>

		<%
		}
		%>
	</table>
</body>
</html>