package deveric.edwith;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class LogicServlet extends HttpServlet {
	@Override
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		int v1 = (int)(Math.random()*100) + 1;
		int v2 = (int)(Math.random()*100) + 1;
		
		int result = v1+v2;
		request.setAttribute("v1", v1);
		request.setAttribute("v2", v2);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("01/request.jsp").forward(request, response);
	}
}
