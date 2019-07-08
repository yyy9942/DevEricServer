package deveric.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFormController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		
		out.println("<!DOCTYPE html>                                                                         ");
		out.println("<html>                                                                                  ");
		out.println("<head>                                                                                  ");
		out.println("<meta charset='UTF-8'>                                                                  ");
		out.println("<title>DevEric Login Example</title>                                                    ");
		out.println("<!-- jQuery를 CDN방식으로 import한다. -->                                               ");
		out.println("<script type='text/javascript' src='http://code.jquery.com/jquery-latest.js'></script>  ");
		out.println("<!-- 만들어 놓은 validation.js를 import한다 -->                                         ");
		out.println("<script type='text/javascript' src='/DevEricServers/js/validation.js'></script>         ");
		out.println("<script type='text/javascript'>                                                         ");
		out.println("	$(function(){                                                                      ");
		out.println("		// submit에 대한 리스너를 선언한다.                                             ");
		out.println("		$('form').submit(function(){                                                    ");
		out.println("			// ID의 정규식이 맞지 않을 때                                               ");
		out.println("			if(!$('input[name=mem_id]').val().validationID()){                          ");
		out.println("				alert('아이디 형식이 맞지 않습니다!');                                  ");
		out.println("				return false;                                                           ");
		out.println("			}                                                                           ");
		out.println("			// PW의 정규식이 맞지 않을 때                                               ");
		out.println("			if(!$('input[name=mem_pw]').val().validationPW()){                          ");
		out.println("				alert('패스워드 형식이 맞지 않습니다!')                                 ");
		out.println("				return false;                                                           ");
		out.println("			}                                                                           ");
		out.println("			// 정규식에 맞으면 submit을 실행한다.                                       ");
		out.println("			alert('환영합니다!')                                                        ");
		out.println("			return true;                                                                ");
		out.println("		});                                                                               ");
		out.println("	});                                                                                   ");
		out.println("</script>                                                                               ");
		out.println("</head>                                                                                 ");
		out.println("<body>                                                                                  ");
		out.println("<form>                                                                                  ");
		out.println("	<table>                                                                             ");
		out.println("		<tr>                                                                            ");
		out.println("			<td>아이디 </td>                                                            ");
		out.println("			<td><input type='text' name='mem_id'></td>                                  ");
		out.println("		</tr>                                                                           ");
		out.println("		<tr>                                                                            ");
		out.println("			<td>패스워드</td>                                                           ");
		out.println("			<td><input type='text' name='mem_pw'></td>                                  ");
		out.println("		</tr>                                                                           ");
		out.println("		<tr>                                                                            ");
		out.println("			<td colspan='2'><input type='submit' value='로그인'></td>                   ");
		out.println("		</tr>                                                                           ");
		out.println("	</table>                                                                            ");
		out.println("</form>                                                                                 ");
		out.println("</body>                                                                                 ");
		out.println("</html>																					");
	}
}
