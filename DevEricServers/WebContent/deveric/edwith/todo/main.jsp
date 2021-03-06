<%@page import="java.text.SimpleDateFormat"%>
<%@page import="edwith.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	TodoDao dao = TodoDao.getInstance();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$(".nextBtn").click(function() {
			var btn = $(this);
			var nods = $(this).closest("div");
			var id = $(nods).find("input[name='id']").val();
			var container = $(nods).parent(".list");
			// DB처리
			$.ajax({
				type : "POST"
				,url : "/DevEricServers/deveric/edwith/todo/updateTodo.jsp"
				,data : {id : id}
				,success : function(result){
					$(container).next().append(nods);
					if($(nods).parent(".list").attr("id") == "done"){
						$(btn).attr("style", "visibility:hidden");
					}
				}
				,error : function(result){
					alert("서버와 통신 오류가 있습니다. ");
				}
		
			});
		});
		
		$("#addTodo").click(function(){
			$(location).attr("href", "/DevEricServers/deveric/edwith/todo/postTodoForm.jsp");
		});
	});
</script>

<style type="text/css">
#container {
	width: 1200px;
	min-height: 900px;
	background: white;
	position: absolute;
        left:0;
        right:0;
        margin:auto;
}

body {
	background: silver;
	font-family: 고딕;
}

#title {
	height: 150px;
}

#title-text {
	color: steelblue;
	font-size: 30px;
	transform: rotate(-30deg);
	float: left;
	margin-top: 50px;
}

#addTodo {
	width: 200px;
	height: 40px;
	background: dodgerblue;
	border: none;
	color: white;
	font-size: 18px;
	float: right;
	margin: 50px;
}

#center {
	float: right;
}

.card {
	font-family: 고딕;
	padding: 10px;
	margin-right: 10px;
	margin-top: 10px;
	width: 300px;
	height: 40px;
	text-align: left;
	display: inline-block;
	line-height: 1.2;
	background: lightblue;
}

.content {
	height: 80px;
}

.card-title {
	background: blue;
	color: white;
	font-size: 30px;
}

.list {
	float: left;
	width: 330px;
}

.subInfo {
	font-size: 14px;
	color: midnightblue;
	float: left;
	margin-bottom: 20px;
}

.mainInfo {
	font-size: 22px;
}

.nextBtn {
	float: right;
}
</style>
</head>
<body>
	<div id="container">
		<div id="title">
			<span id="title-text"> <b>나의 해야할 일들</b>
			</span>
			<button id="addTodo">새로운 TODO등록</button>
		</div>
		<div id="center">
			<div id="todo" class="list">
				<div class="card card-title">
					<b>TODO</b>
				</div>
				<c:forEach items="${todos}" var="todo">
					<c:if test="${todo.type eq 'TODO'}">
						<div class="card content">
							<div class="mainInfo">
								<b>${todo.title}</b>
								<input type="hidden" value="${todo.id }" name="id">
							</div>
							<br>
							<div class="subInfo">
								<b>등록날짜:${fn:split(todo.regdate,' ')[0]}, ${todo.name}, 우선순위 ${todo.sequence} </b>
							</div>
							<button class="nextBtn todoBtn" value="${todo.id}">-></button>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div id="doing" class="list">
				<div class="card card-title">
					<b>DOING</b>
				</div>
				<c:forEach items="${todos}" var="todo">
					<c:if test="${todo.type eq 'DOING'}">
						<div class="card content">
							<div class="mainInfo">
								<b>${todo.title}</b>
								<input type="hidden" value="${todo.id }" name="id">
							</div>
							<br>
							<div class="subInfo">
								<b>등록날짜:${fn:split(todo.regdate,' ')[0]}, ${todo.name}, 우선순위 ${todo.sequence} </b>
							</div>
							<button class="nextBtn todoBtn" value="${todo.id}">-></button>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div id="done" class="list">
				<div class="card card-title">
					<b>DONE</b>
				</div>
				<c:forEach items="${todos}" var="todo">
					<c:if test="${todo.type eq 'DONE'}">
						<div class="card content">
							<div class="mainInfo">
								<b>${todo.title}</b>
							</div>
							<br>
							<div class="subInfo">
								<b>등록날짜:${fn:split(todo.regdate,' ')[0]}, ${todo.name}, 우선순위 ${todo.sequence} </b>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>