<%@page import="deveric.chat.server.EricSend"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.net.Socket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	StringBuffer chats = new StringBuffer();

	String name = request.getParameter("name");
	Socket socket = null;
	DataInputStream dIn = null;
	BufferedReader br = null;
	DataOutputStream dOut = null;
	try{
		socket = new Socket("localhost", 1227);
		dIn = new DataInputStream(socket.getInputStream());
		br = new BufferedReader(new InputStreamReader(System.in));
		dOut = new DataOutputStream(socket.getOutputStream());
		
		dOut.writeUTF(name);
		
		Thread th = new Thread(new EricSend(dOut));
		th.start();
		
	}catch(Exception e){
		
	}
	
	try{
		while(true){
			String str = dIn.readUTF();
			chats.append(str + "<br>");
		}
	}catch(Exception e){
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chat~!</title>
<style type="text/css">
	#chat-container{
		width: 800px;
		height : 500px;
		border: 1px solid blue;
	}
	#chat-box{
		overflow: scroll;
		height:400px;
		background: black;
		color: while;
		border:1px solid red;
	}
	#input-chat{
		width: 650px;
	}
	#btn-send{
		width:100px;
	}
</style>
 <script src="https://code.jquery.com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		while(true){
			$("#chat-box").text(<%=chats.toString()%>);
		}
	})
</script>
</head>
<body>
<div id="chat-container">
	<div id="chat-box"></div>
	<div>
		<input type="text" id="input-chat">
		<input type="button" id="btn-send" value="전송">
	</div>
</div>

</body>
</html>