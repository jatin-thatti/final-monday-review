
package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet(name = "logout", urlPatterns = { "/logout" })
public class Logout extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		
//		session.setAttribute("authUser", null);
		session.removeAttribute("authUser");
		
		
		
		response.sendRedirect("login.jsp");
		
	
		
		
	
	}



}
