
package controller;

import java.io.IOException;
import java.io.PrintWriter;

import dao.EmployeeDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(name = "login", urlPatterns = { "/login" })
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String userId = request.getParameter("username");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		
		
		
		
		
		if(EmployeeDao.authenticateUser(Integer.parseInt(userId),password)) {
			
			
		
			
			session.setAttribute("authUser",userId);
			response.sendRedirect("home.jsp");
			
			
			
		}else{
			
			response.sendRedirect("login.jsp");
			
		}
		
		
		
		
		
		
		
	}
	
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
	

		
		HttpSession session = request.getSession();
		
		
		
		if(session.getAttribute("authUser")!=null) {
			
			
			response.sendRedirect("home.jsp");
			return;
			
		}
		response.sendRedirect("login.jsp");
		
		
		
	
	
	}
	
	
	
}