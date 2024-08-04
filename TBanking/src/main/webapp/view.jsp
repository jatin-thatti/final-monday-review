
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,bean.*, controller.*, java.text.SimpleDateFormat" %>
<%@include file="auth.jsp" %>

<%	response.setHeader("Cache-Control", "no-cache,no-store,must revalidate");
 %>
      



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Customers</title>
    <!-- <link rel="stylesheet" href="./style.css"> -->
    <style>

        
/* General Styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
    color: #333;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.container {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
}

header {
    background: linear-gradient(90deg, #4b79a1, #283e51);
    color: white;
    padding: 1em 0;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Navigation Bar */
nav ul {
    list-style: none;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 0;
    padding: 0 2em;
}

nav ul li {
    display: inline;
}

nav ul li a {
    color: white;
    text-decoration: none;
    padding: 0.5em 1em;
}

nav ul li a:hover {
    background-color: #34495e;
    border-radius: 5px;
}

.bank-name {
    font-size: 1.5em;
    font-weight: bold;
}

/* Customer List Section */
main {
    padding: 2em;
    flex-grow: 1;
}

.customer-list {
    max-width: 1000px;
    margin: 0 auto;
    background-color: white;
    padding: 1.5em;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.customer-list h2 {
    font-size: 2em;
    margin-bottom: 1em;
    text-align: center;
    color: #2c3e50;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 1.5em;
}

table th, table td {
    border: 1px solid #ddd;
    padding: 1em;
    text-align: left;
}

table th {
    background: linear-gradient(90deg, #2980b9, #6dd5fa);
    color: white;
    font-weight: bold;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #f0f8ff;
}

/* Footer Styles */
footer {
    background: linear-gradient(90deg, #4b79a1, #283e51);
    color: white;
    text-align: center;
    padding: 0.5em 0;
    box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
    flex-shrink: 0;
}

    </style>
</head>
<body>
    <div class="container">
        <header>
            <nav>
                <ul>
                    <li><a href="/TBanking/home.jsp">Home</a></li>
                    <li class="bank-name">TBanking</li>
                    <li><a href="/TBanking/logout">Logout</a></li>
                </ul>
            </nav>
        </header>
        
        <main>
            <section class="customer-list">
                <h2>All Customers</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Account Number</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>City</th>
                            <th>Balance</th>
                            <th>Account Type</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        
                        <% try{
                        	
                        	
	 	ArrayList<Customer> traineeList = (ArrayList<Customer>)request.getAttribute("c");
	 	for(Customer trainee: traineeList) {  %>


                        
                        
                        <tr>
                            
                            
                            <td><%=trainee.getAccountNumber()%></td>
                            <td><%=trainee.getFirstName()%></td>
                            <td><%=trainee.getLastName()%></td>
                            <td><%=trainee.getAge()%></td>
                            <td><%=trainee.getGender()%></td>
                            <td><%=trainee.getCity()%></td>
                            <td><%=trainee.getBalance()%></td>
                            <td><%=trainee.getAccountType()%></td>
                            
                            
                            
                            
                            
                        </tr>   
                        
	 	<% }           	}catch(Exception e){} %>

                                  
                        
                    </tbody>
                </table>
            </section>
        </main>

        <footer>
            <p>&copy; 2024 TBanking. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>







	





























