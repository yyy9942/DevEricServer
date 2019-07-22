<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DevEric Chatting</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
	<fieldset>
		<textarea id="messageWindow" rows="10" cols="50" readonly="true"></textarea>
		<br>
		<input id="inputMessage" type="text">
		<input type="submit" value="send" onclick="send()">
	</fieldset>
</body>
<script type="text/javascript">

	var textarea = document.getElementById("messageWindow");
	var webSocket = new WebSocket('ws://localhost:8080/DevEricServers/broadsocket');
	var inputMessage = document.getElementById('inputMessage');
	
	webSocket.onerror = function(e){
		onError(e);
	};
	webSocket.onopen = function(e){
		onOpen(e);
	};
	webSocket.onmessage = function(e){
		onMessage(e);
	};
	
	
	function onMessage(e){
		textarea.value += "익명의 상대 : " + event.data + "\n";
	}
	
	function onOpen(e){
		textarea.value += "연결 성공\n";
	}
	
	function onError(e){
		alert(e.data);
	}
	
	function send(){
		textarea.value += "나 : " + inputMessage.value + "\n";
		webSocket.send(inputMessage.value);
		inputMessage.value = "";
	}
	
</script>
</html>