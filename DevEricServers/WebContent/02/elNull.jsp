<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("myValue","Hello Eric!");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	td{
	border : 1px solid blue;
	font-size: 20px;
	font-family: 나눔고딕;	
	width: 150px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>Key</td>
			<td>Value</td>
			<td>EL</td>
			<td>is Null?</td>
			<td>EL</td>
			<td>is Not Null?</td>
		</tr>
		<tr>
			<td>myValue</td>
			<td>${myValue}</td>
			<td>\${empty myValue}</td>
			<td>${empty myValue}</td>
			<td>\${not empty myValue}</td>
			<td>${not empty myValue}</td>
		</tr>
		<tr>
			<td>nullValue</td>
			<td>${nullValue}</td>
			<td>\${empty nullValue}</td>
			<td>${empty nullValue}</td>
			<td>\${not empty nullValue}</td>
			<td>${not empty nullValue}</td>
		</tr>
	</table>
</body>
</html>