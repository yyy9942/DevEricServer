package edwith.todo.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edwith.todo.dao.TodoDao;
import edwith.todo.dto.TodoDto;

/**
 * Servlet implementation class PostTodo
 */
@WebServlet("/PostTodo")
public class PostTodo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	TodoDto todo = new TodoDto();
    	String title = request.getParameter("title");
    	String name = request.getParameter("name");
    	int sequence = Integer.parseInt(request.getParameter("seq"));
    	SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd hh:mm:ss");
    	
    	todo.setTitle(title);
    	todo.setName(name);
    	todo.setRegdate(format.format(new Date()));
    	todo.setSequence(sequence);
    	todo.setType("TODO");
    	
    	TodoDao dao = TodoDao.getInstance();
    	dao.addTodo(todo);
    	
    	response.sendRedirect("/DevEricServers/TodoController");
    }

}
