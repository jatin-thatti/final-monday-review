
package controller;
import bean.Customer;
import dao.CustomerDao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet(name = "register", urlPatterns = { "/user/register" })
public class Register extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("register.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String accNum = request.getParameter("accNum");
        String Balance = request.getParameter("Balance");
        String accType = request.getParameter("accType");
        
        
        
        
//        String fullName = fname + lname;
//        out.print(fname);
        
        Customer emp = new Customer();
        
        emp.setAccountNumber(accNum);
        emp.setAccountType(accType);
        emp.setAge(age);
        emp.setGender(gender);
        emp.setBalance(Balance);
        emp.setCity(city);
        emp.setFirstName(fname);
        emp.setLastName(lname);
        
        int status = 0;
		try {
			status = CustomerDao.save(emp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
//        if (status > 0 ) {
//            out.print("<font color=green><p>Record saved!!! </p><font>");
//            request.getRequestDispatcher("student.html").include(request, response);
//        }
//        else {
//            out.println("<font color=red> Sorry! unable to save record </font>");
//            request.getRequestDispatcher("registration.html").include(request, response);
//        }
//        
        
        if (status > 0 ) {
        	request.setAttribute("val", status);
        }
        else {
        	request.setAttribute("val", status);
        }
        request.getRequestDispatcher("register.jsp").forward(request, response);
//        response.sendRedirect("register.jsp");
                
        
		
		
	}

}