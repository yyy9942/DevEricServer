<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>How to get request header?</title>
<style>
	td{
		border: 1px solid blue;
		width: 200px;
	}
	*{
		font-size: 14px;
		font-family: 나눔고딕;
	}
</style>
</head>
<body>
<table>
	<tr>
		<td>표현식</td>
		<td>결과값</td>
		<td>EL</td>
		<td>결과값</td>
	</tr>
	<tr>
		<td><\%=request.getContextPath() %></td>
 		<td><%=request.getContextPath() %></td>
 		<td>\${pageContext.request.contextPath }</td>
 		<td>${pageContext.request.contextPath }</td>
 	</tr>
 	<tr>
 		<td><\%=request.getRemoteAddr() %></td>
 		<td><%=request.getRemoteAddr() %></td>
 		<td>\${pageContext.request.remoteAddr }</td>
 		<td>${pageContext.request.remoteAddr }</td>
 	</tr>
 	<tr>
 		<td><\%=application.getRealPath("") %></td>
 		<td><%=application.getRealPath("") %></td>
 		<td>\${pageContext.servletContext.getRealPath('') }</td>
<%--  		<td>${pageContext.servletContext.getRealPath('') }</td> --%>
 	</tr>
</table>
</body>
</html>