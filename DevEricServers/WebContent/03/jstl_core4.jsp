<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String name = "devEric";
	int score = 65;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL CORE</title>
</head>
<body>
	<h3>My Name</h3>
	<c:if test='<%=name.equals("devEric") %>'>
		devEric은 제 이름이 맞습니다!<br><br>
	</c:if>
	<h3>My Score</h3>
	학점은 
	<c:choose>
		<c:when test="<%=score >= 90 %>">A</c:when>
		<c:when test="<%=score >= 80 %>">B</c:when>
		<c:when test="<%=score >= 70 %>">C</c:when>
		<c:when test="<%=score >= 60 %>">D</c:when>
		<c:otherwise>F</c:otherwise>
	</c:choose>
	입니다!<br>
</body>
</html>