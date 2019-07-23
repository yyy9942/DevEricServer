<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL CORE</title>
</head>
<body>
<c:forEach begin="0" end="10" var="i" varStatus="stat">
	<c:if test="${stat.first }">
		최초 반복문의 시작<br>
	</c:if>
	${i } : ${stat.count }<br>
	<c:if test="${stat.last }">
		최종 반복문의 실행<br>
	</c:if>
</c:forEach>
</body>
</html>