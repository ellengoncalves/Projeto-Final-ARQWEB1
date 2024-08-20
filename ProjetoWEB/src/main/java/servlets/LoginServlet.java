package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;

import model.User;
import model.util.users.UserLogin;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public LoginServlet() {
		super();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user = UserLogin.login(email, password);
		
		RequestDispatcher dispatcher = null;
		
		if(user != null) {
			// armazenar o cookie
			Cookie cookie = new Cookie("loggedUser", email);
			cookie.setMaxAge(86400); // 86400 segundos =  60*60*24
			resp.addCookie(cookie);
			
			req.setAttribute("user", user);
			dispatcher = req.getRequestDispatcher("/homeServlet");
		}else {
			// remover o cookie
			Cookie[] cookies = req.getCookies();
			if(cookies != null) {
				for(Cookie c: cookies) {
					if(c.getName().equals("loggedUser")) {
						c.setMaxAge(0);
						resp.addCookie(c);
					}
				}
			}			
			
			req.setAttribute("result", "loginError");
			dispatcher = req.getRequestDispatcher("/login.jsp");
		}
		
		dispatcher.forward(req, resp);
	}
}

