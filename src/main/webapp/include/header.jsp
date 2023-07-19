<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String root = request.getContextPath();
%>
<div>
	<a href="<%=root%>/">Home</a>
	<a href="<%=root%>/login.jsp">Login</a>
	<a href="<%=root%>/join.jsp">Join</a>
	<a href="<%=root%>/board.jsp">Board</a>
	<a href="<%=root%>/game-join.jsp">Game</a>
	<a href="<%=root%>/board-info.jsp">BoardInfo</a>
</div>
<div>
	<a href="<%=root%>/user/user-list.jsp">User List</a>
	<a href="<%=root%>/board/board-list.jsp">Board List</a>
	<a href="<%=root%>/game/game-list.jsp">Game List</a>
	<a href="<%=root%>/brand/brand-list.jsp">Brand List</a>
	<a href="<%=root%>/movie2/movie-list.jsp">Movie List</a>
</div>
