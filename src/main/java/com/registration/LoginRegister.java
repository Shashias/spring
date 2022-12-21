package com.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginRegister() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginDAO cd= new LoginDAOImpl();
		String userName = request.getParameter("username");
		String password = request.getParameter("password1");
		
		String submitType = request.getParameter("submit");
		Login c=cd.getLogin(userName, password);
		if(submitType.equals("Login") && c!=null && c.getName()!=null) {
			request.setAttribute("message", c.getName());
			request.getRequestDispatcher("Welcom.jsp").forward(request, response);
		}
		else if(submitType.equals("register")){
			
			c.setName(request.getParameter("name"));
			c.setPassword(password);
			c.setUsername(userName);
			cd.insertLogin(c);
			
			request.setAttribute("sucess message", "registration done, now you can login..");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			request.setAttribute("message", "Invalid, Create New Account");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}
}

