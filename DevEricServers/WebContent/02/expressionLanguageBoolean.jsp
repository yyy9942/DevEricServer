<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Example</title>
<style type="text/css">
	td{width:200px;border: 1px solid blue;}
</style>
</head>
<body>
<h3>연산 결과</h3>
	<table>
		<tr>
			<td>Expression</td>
			<td>Expression result</td>
			<td>EL</td>
			<td>EL result</td>
		</tr>
		<tr>
			<td><\%=5 == 3 %></td>
			<td><%=5 == 3 %></td>
			<td>\${5 == 3 }</td>
			<td>${5 == 3 }</td>
		</tr>
		<tr>
			<td><\%=5 != 3 %></td>
			<td><%=5 != 3 %></td>
			<td>\${5 != 3 }</td>
			<td>${5 != 3 }</td>
		</tr>
		<tr>
			<td><\%=5 > 3 %></td>
			<td><%=5 > 3 %></td>
			<td>\${5 > 3 }</td>
			<td>${5 > 3 }</td>
		</tr>
		<tr>
			<td><\%=5 >= 3 %></td>
			<td><%=5 >= 3 %></td>
			<td>\${5 >= 3 }</td>
			<td>${5 >= 3 }</td>
		</tr>
		<tr>
			<td><\%=5 < 3 %></td>
			<td><%=5 < 3 %></td>
			<td>\${5 < 3 }</td>
			<td>${5 < 3 }</td>
		</tr>
		<tr>
			<td><\%=5 <= 3 %></td>
			<td><%=5 <= 3 %></td>
			<td>\${5 <= 3 }</td>
			<td>${5 <= 3 }</td>
		</tr>
	</table>
</body>
</html>