
package controller;
import bean.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import dao.CustomerDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(name = "update", urlPatterns = { "/user/update" })
public class Update extends HttpServlet {

       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		session.setAttribute("allCustomers", CustomerDao.getAllStudent());
		response.sendRedirect("update.jsp");
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		String accountNumber = req.getParameter("accountno");
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		String balance = req.getParameter("balance");
		String accountType= req.getParameter("accountType");
		
		System.out.print(accountNumber);
		Customer c = new Customer();
		c.setAccountNumber(accountNumber);
		c.setFirstName(firstName);
		c.setLastName(lastName);
		c.setAge(age);
		c.setGender(gender);
		c.setCity(city);
		c.setBalance(balance);
		c.setAccountType(accountType);
		
		int status = CustomerDao.update(c);
		if (status > 0) {
			
			System.out.print("record updated");
			
			resp.sendRedirect("update.jsp");
			
			

		}
		else {
			out.println("Sorry! unable to update record");
		}
		
		
	}

}
