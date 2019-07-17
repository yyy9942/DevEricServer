<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
        $("#remove").click(function(){
        	$("input[type='text']").val("");
        });
        
        $("#prevButton").click(function(){
        	$(location).attr("href", "/DevEricServers/TodoController");
        });
        
    });
</script>

<style type="text/css">
    body {
        background: silver;
        font-family: 고딕;
        font-size:20px;
        
    }
    #container {
        width: 1200px;
        min-height: 700px;
        background: white;
        text-align: center;
        position: absolute;
        left:0;
        right:0;
        margin:auto;
    }
    input[type="button"]{
        width:120px;
        height:40px;
        border:1px solid gray;
        background:white;
        font-size: 15px;
    }
    input[type="submit"]{
        width:120px;
        height:40px;
        border:1px solid gray;
        background:white;
        font-size: 15px;
    }
    input[type="button"].blue-button{
        background:blue;
        color:white;
        border:0px;
    }
    #prevButton{
        margin-right: 50px;
        text-decoration: underline;
        font-weight: bold;
    }
    form{
        width:600px;
        text-align: left;
        position: absolute;
        left:0;
        right:0;
        margin:auto;
    }
    #text-title{
        font-size:30px;
    }
    .support-text{  
        font-size: 15px;
        color: dimgray;
    }
    input[type="text"]{
        width:300px;
        height: 30px;
        margin-top:10px;
        font-size: 20px;
    }
    .radio-text{
        font-size: 16px;
        margin-right: 20px;
    }


</style>
</head>
<body>
    <div id="container">
        <br><br>
        <div id="text-title"><b>할일 등록</b></div><br><br>
        <form action="/DevEricServers/PostTodo" type="POST">
            <div class="support-text">어떤 일인가요?</div>
            <input name="title" type="text" id="title" placeholder="SWIFT 공부하기(24자까지)" style="width:500px;" maxlength="24"><br><br>
            <div class="support-text">누가 할일인가요?</div>
            <input name="name" type="text" id="name" placeholder="홍길동" maxlength="5"><br><br>
            <div class="support-text">우선순위를 선택하세요</div>
            <input type="radio" name="seq" value="1" checked="true"><span class="radio-text">1순위</span>
            <input type="radio" name="seq" value="2"><span class="radio-text">2순위</span>
            <input type="radio" name="seq" value="3"><span class="radio-text">3순위</span><br>
            <br><br>
            <input type="button" value="< 이전" id="prevButton"> 
            <input type="submit" value="제출" class="blue-button" id="submit"> 
            <input type="button" value="내용지우기" class="blue-button" id="remove"> 
        </form>
    </div>
</body>
</html>