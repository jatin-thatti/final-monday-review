
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import bean.Customer;
import dao.CustomerDao;
/**
 * Servlet implementation class View
 */
@WebServlet(name = "view", urlPatterns = { "/user/view" })
public class View extends HttpServlet {

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		ArrayList<Customer> list = CustomerDao.getAllStudent();
		request.setAttribute("c", list);
		
		
		request.getRequestDispatcher("/view.jsp").forward(request, response);
		
		
	
	}

	

}
