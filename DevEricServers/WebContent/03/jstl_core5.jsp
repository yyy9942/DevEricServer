<%@page import="javax.management.modelmbean.RequiredModelMBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set scope="page" var="name" value="devEric"></c:set>
<c:remove var="name" scope="page"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL CORE</title>
</head>
<body>
	<h2>/03/myname.jsp import</h2>
	<c:url var="nameURL" value="/03/myname.jsp">
		<c:param name="name" value="eric"></c:param>
	</c:url>
	<a href="${nameURL }">이동하기</a>
</body>
</html>