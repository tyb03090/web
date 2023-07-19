<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	/* int[] nums = new int[] { 10, 5, 21 };
	for (int i = 0; i < nums.length; i++) {
		for (int j = i + 1; j < nums.length; j++) {
			if (nums[i] > nums[j]) {
		int tmp = nums[i];
		nums[i] = nums[j];
		nums[j] = tmp;
			}
		}
	}

	List<Integer> numList = new ArrayList<>();
	numList.add(10);
	numList.add(5);
	numList.add(21); */
	
	/* for (int i = 0; i < numList.size(); i++) {
		for (int j = i + 1; j < numList.size(); j++) {
			if (numList.get(i) > numList.get(j)) {
		int tmp = numList.get(i);
		numList.set(i, numList.get(j));
		numList.set(j, tmp);
			}
		}
	} */

	
	List<Map<String, Integer>> mapList = new ArrayList<>();
	Map<String, Integer> map = new HashMap<>();
	map.put("age", 10);
	mapList.add(map);

	new HashMap<>();
	map.put("age", 2);
	mapList.add(map);

	new HashMap<>();
	map.put("age", 21);
	mapList.add(map);

	for(int i = 0; i < mapList.size(); i++){
		for(int j = i + 1; j < mapList.size(); j++){
			
			if(mapList.get(i).get("age") > mapList.get(j).get("age")){
					Map<String, Integer> tmpMap = mapList.get(i);
					mapList.set(i, mapList.get(j));
					mapList.set(j, tmpMap);
			}	
		}
	}
	
	%>

	<table border="1">
		<%
		/* for (int i = 0; i < numList.size(); i++) { */
			for(int i = 0; i < mapList.size(); i++) {
		%>
		<tr>
			<td><%=i%></td>
			<td><%-- <%=numList%> --%><%=mapList %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>