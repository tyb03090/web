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
	List<String> names = new ArrayList<>();
	names.add("김세희");
	names.add("김용준");
	names.add("이원준");
	names.add("이원기");
	names.add("이왕균");
	names.add("이보성");

	List<Integer> points = new ArrayList<>();
	points.add(80);
	points.add(77);
	points.add(99);
	points.add(66);
	points.add(55);
	points.add(54);
	
	List<String> addrs = new ArrayList<>();
	addrs.add("서울");
	addrs.add("부산");
	addrs.add("대전");
	addrs.add("대구");
	addrs.add("경기");
	addrs.add("광주");
	
	int max = points.get(0);
	int min = points.get(0);
	String maxName = "";
	String minName = "";
	String maxAddr = "";
	String minAddr = "";
	for(int i = 0; i < points.size(); i++){
		if(max < points.get(i)){
			max = points.get(i);
			maxName = names.get(i);
			maxAddr = addrs.get(i);
		}
		if(min > points.get(i)){
			min = points.get(i);
			minName = names.get(i);
			minAddr = addrs.get(i);
		}
	}

	%>

	<table border="1">
		<tr>
			<th><%="최고점"%></th>
			<td><%=maxName%>, <%=max%>, <%=maxAddr%></td>
		</tr>
		<tr>
			<th><%="최저점"%></th>
			<td><%=minName%>, <%=min%>, <%=minAddr%></td>
		</tr>
	</table>
</body>
</html>