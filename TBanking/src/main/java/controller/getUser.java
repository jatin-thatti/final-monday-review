
package controller;

import java.io.IOException;


import java.io.PrintWriter;
import java.util.ArrayList;


import bean.Customer;
import dao.CustomerDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/user/getUser")
public class getUser extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String accountNumber = request.getParameter("accountNumber");
		
		int isPresent = CustomerDao.search(accountNumber);
		
		 response.setContentType("text/plain");
	        response.setCharacterEncoding("UTF-8");

	        
	        response.getWriter().write(Integer.toString(isPresent));
	        
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String accountNumber = request.getParameter("accountno");
		
		Customer fetchedUser = null;
		
		
		ArrayList<Customer> allCustomers = CustomerDao.getAllStudent();
		
		for(int i=0;i<allCustomers.size();i++)
		{
			if(allCustomers.get(i).getAccountNumber().equals(accountNumber))
			{
				fetchedUser = allCustomers.get(i);
				break;
			}
		}
		
		
		request.setAttribute("fetchedUser", fetchedUser);
		request.getRequestDispatcher("update.jsp").forward(request, response);
		
	
	}

}