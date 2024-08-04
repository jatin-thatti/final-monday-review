
package controller;

import java.io.IOException;
import java.io.PrintWriter;

import dao.CustomerDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(name = "delete", urlPatterns = { "/user/delete" })
public class Delete extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.sendRedirect("delete.jsp");
		
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
String accountno = (String)req.getParameter("accountno");
		
		int status =CustomerDao.delete(accountno);
		PrintWriter out = resp.getWriter();
		
		if (status > 0) {
			resp.sendRedirect("delete.jsp");
		}
		else {
			out.println("Sorry! unable to delete record");
		}
		
		
		
		
	}

}