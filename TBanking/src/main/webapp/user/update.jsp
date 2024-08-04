
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../auth.jsp" %>
<%@page import="bean.*" %>

<%	response.setHeader("Cache-Control", "no-cache,no-store,must revalidate");
 %>
      
      

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer</title>
   
    <style>

        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e0e0e0;
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
            transition: background-color 0.3s, color 0.3s;
        }
        
        nav ul li a:hover {
            background-color: #34495e;
            border-radius: 5px;
            color: #f0f0f0;
        }
        
        .bank-name {
            font-size: 1.5em;
            font-weight: bold;
        }
        
        /* Update Form Section */
        main {
            padding: 2em;
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .update-form {
            width: 100%;
            max-width: 700px;
            background-color: white;
            padding: 2em;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.8s ease;
        }
        
        .update-form h2 {
            font-size: 2em;
            margin-bottom: 1em;
            text-align: center;
            color: #2c3e50;
            border-bottom: 2px solid #2980b9;
            padding-bottom: 0.5em;
            text-transform: uppercase;
        }
        
        /* Form Layout */
        .update-form form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1em 2em;
        }
        
        .update-form .form-group {
            display: flex;
            flex-direction: column;
        }
        
        .update-form .form-group label {
            margin-bottom: 0.5em;
            font-weight: bold;
            color: #2c3e50;
        }
        
        .update-form .form-group input,
        .update-form .form-group select {
            padding: 0.75em;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            background-color: #f9f9f9;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        
        .update-form .form-group input:focus,
        .update-form .form-group select:focus {
            border-color: #2980b9;
            box-shadow: 0 0 5px rgba(41, 128, 185, 0.5);
            outline: none;
        }
        
        #update-form.hidden {
            display: none;
        }
        
        /* Button Styles */
        .update-form button {
            grid-column: span 2;
            padding: 0.75em;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            margin-top: 1em;
        }
        
        .update-form button:hover {
            background-color: #3498db;
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        /* Footer Styles */
        footer {
            background: linear-gradient(90deg, #4b79a1, #283e51);
            color: white;
            text-align: center;
            padding: 0.5em 0;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
            flex-shrink: 0;
            font-size: 0.9em;
        }
        
        
        </style>
</head>
<body>
    <div class="container">
        <header>
            <nav>
                <ul>
                   <li><a href="/TBanking/home.jsp">Home</a></li>
                    <li class="home">TBanking</li>
                    <li><a href="/TBanking/logout">Logout</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <section class="update-form">
                <h2>Update Customer</h2>
                
                    <div class="form-group" id="findAccountForm">
                        <label for="account-number">Account Number</label>
                        <input type="text" id="accountno1" name="accountno" placeholder="Enter Account Number" required>
                    
                    <button onclick = "displayForm()">Find Account</button>
                </div>

                <form action="update"id="update" class="hidden" method="post" style="display:none">
                	
                	<div class="form-group">
                        <label for="first-name">Account Number</label>
                        <input type="text" name="accountno" id="accountno" maxlength="50" placeholder="Enter Account Number" readonly>
                    </div>
                
                    <div class="form-group">
                        <label for="first-name">First Name</label>
                        <input type="text" id="firstName" name="firstName" maxlength="50" placeholder="Enter First Name">
                    </div>
                    <div class="form-group">
                        <label for="last-name">Last Name</label>
                        <input type="text" id="lastName" name="lastName" maxlength="50" placeholder="Enter Last Name">
                    </div>
                    <div class="form-group">
                        <label for="age">Age</label>
                        <input type="text" id="age" name="age" required placeholder="Enter Age">
                    </div>
                    <div class="form-group">
                        <label for="gender">Gender</label>
                        <select id="gender" name="gender">
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="city">City</label>
                        <select id="city" name="city">
                               <option value="Chennai">Chennai</option>
							 <option value="Hyderabad">Hyderabad</option>
							 <option value="Vijayawada">Vijayawada</option>
							 <option value="LAM">LAM</option>
							 <option value="Banglore">Banglore</option>
                        </select>
                        
                        
                        
                        
                      
                        
                        
                        
                        
                        
                        
                        
                        
                    </div>
                    <div class="form-group">
                        <label for="account-type">Account Type</label>
                        <select id="account-type" name="account-type">
                            <option value="current">Current</option>
                            <option value="savings">Savings</option>
                        </select>
                    </div>
                    <button type="submit">Update Customer</button>
                </form>
            </section>
        </main>

        <footer>
            <p>&copy; 2024 TBanking. All rights reserved.</p>
        </footer>
    </div>
    
    
    
        <script src="https://code.jquery.com/jquery-3.7.1.slim.js" integrity="sha256-UgvvN8vBkgO0luPSUl2s8TIlOSYRoGFAX4jlCIm9Adc=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script>

function displayForm(){
	var accountNumber = document.getElementById('accountno1').value;
	var isPresent = false;

	<%
		
		ArrayList<Customer> allCustomers = (ArrayList<Customer>)session.getAttribute("allCustomers");
	
	try{
	
		for(Customer eachCustomer:allCustomers)
		{
	%>		
		
			if(accountNumber==<%=eachCustomer.getAccountNumber()%>)
				{
					
					
				
					document.getElementById('findAccountForm').style.display="none";
					document.getElementById('update').style.display="block";
					isPresent = true;
					
						
						 document.getElementById("accountno").value="<%=eachCustomer.getAccountNumber()%>";
						 document.getElementById("firstName").value="<%=eachCustomer.getFirstName()%>";
						 document.getElementById("lastName").value="<%=eachCustomer.getLastName()%>";
						 document.getElementById("age").value="<%=eachCustomer.getAge()%>";
						 document.getElementById("gender").value="<%=eachCustomer.getGender()%>";
						 document.getElementById("city").value="<%=eachCustomer.getCity()%>";
						 document.getElementById("balance").value="<%=eachCustomer.getBalance()%>";
						 document.getElementById("accountType").value="<%=eachCustomer.getAccountType()%>";
				
					
					
				}
		
		
	<%	}}catch(Exception e){}%>
	
	if(!isPresent){
		alert("Enter Correct Account number");
	}

}
</script>
    
    
    
</body>





</html>













