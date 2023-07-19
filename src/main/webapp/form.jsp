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
String uiId = request.getParameter("uiId");
String uiPwd = request.getParameter("uiPwd");

if(uiId!=null){
out.print("니가 쓴 uiId : " + uiId + "<br>");
out.print("니가 쓴 uiPwd : " + uiPwd + "<br>");
}
%>
<form>
	
</form>
</body>
</html>