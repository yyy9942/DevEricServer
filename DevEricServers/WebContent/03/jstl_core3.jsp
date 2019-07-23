<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String myFriends = "jack,eric,jane,poll";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL CORE</title>
</head>
<body>
	<c:forTokens items="<%=myFriends %>" delims="," var="friend">
		<div>나의 ${stat.count }번째 친구는 ${friend } 입니다.</div><br>
	</c:forTokens>
</body>
</html>