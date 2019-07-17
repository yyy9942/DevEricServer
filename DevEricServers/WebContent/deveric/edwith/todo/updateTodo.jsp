<%@page import="edwith.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
System.out.println(request.getParameter("id"));
TodoDao dao = TodoDao.getInstance();
dao.updateTodo(Long.parseLong(request.getParameter("id")));
%>