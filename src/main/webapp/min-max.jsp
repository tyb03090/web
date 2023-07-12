<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	Set<Integer> numList = new HashSet<>();
	Random r = new Random();

	while (numList.size() < 6) {
		numList.add(r.nextInt(100) + 1);
	}
	Iterator<Integer> it = numList.iterator();

	int max = 0;
	int min = 100;
	
	for(int num : numList){
		if(max<num){
			max = num;
		}
		if(min>num){
			min = num;
		}
	}
	%>
	<table border = "1">
		<tr>
			<td>
				<%="최대값 : " + max%>
				<%="최소값 : " + min%>
				<%=numList%>
			</td>
		</tr>
	</table>
</body>
</html>