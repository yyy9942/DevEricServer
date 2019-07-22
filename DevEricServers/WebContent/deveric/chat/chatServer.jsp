<%@page import="deveric.chat.server.EricChatServer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	EricChatServer server = new EricChatServer(424);
	server.run();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chat Server</title>
</head>
<body>
	<div id="server-config">서버가 잘 작동하고 있습니다.</div>
</body>
</html>