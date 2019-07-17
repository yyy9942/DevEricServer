package edwith.todo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edwith.todo.dao.TodoDao;

/**
 * Servlet implementation class TodoController
 */
@WebServlet("/TodoController")
public class TodoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<edwith.todo.dto.TodoDto> todos = TodoDao.getInstance().getTodos();
		System.out.println(todos);
		request.setAttribute("todos",todos);
		request.getRequestDispatcher("/deveric/edwith/todo/main.jsp").forward(request, response);
	}


}
