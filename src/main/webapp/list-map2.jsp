<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<>();
	map.put("name", "김세희");
	map.put("point", "80");
	map.put("addr", "서울");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "김용준");
	map.put("point", "77");
	map.put("addr", "부산");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이원준");
	map.put("point", "99");
	map.put("addr", "대전");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이원기");
	map.put("point", "66");
	map.put("addr", "대구");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이보성");
	map.put("point", "55");
	map.put("addr", "경기");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이왕균");
	map.put("point", "54");
	map.put("addr", "광주");
	list.add(map);

	int max = Integer.parseInt(list.get(0).get("point"));
	int min = Integer.parseInt(list.get(0).get("point"));
	String maxName = "";
	String minName = "";
	String maxAddr = "";
	String minAddr = "";

	for (int i = 0; i < list.size(); i++) {
		int point = Integer.parseInt(list.get(i).get("point"));
		String name = list.get(i).get("name");
		String addr = list.get(i).get("addr");
		if (max < point) {
			max = point;
			maxName = name;
			maxAddr = addr;
		}
		if (min > point) {
			min = point;
			minName = name;
			minAddr = addr;
		}
	}
	%>
	<table border="1">
		<tr>
		<td><%="최고점 = " + max%></td>
		<td><%="이름 = " + maxName%></td>
		<td><%="주소 = " + maxAddr%></td>
		</tr>
		<tr>
		<td><%="최소점 = " + min%></td>
		<td><%="이름 = " + minName%></td>
		<td><%="주소 = " + minAddr%></td>
		</tr>
	</table>
</body>
</html>