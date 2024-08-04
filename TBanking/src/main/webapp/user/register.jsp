
<%@page import="dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../auth.jsp" %>

<%	response.setHeader("Cache-Control", "no-cache,no-store,must revalidate");
 %>
      

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Customer</title>
    <!-- <link rel="stylesheet" href="./style.css"> -->
    <style>
        /* General Styles */
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

/* Registration Form Section */
main {
    padding: 2em;
    flex-grow: 1;
    display: flex;
    justify-content: center;
    align-items: center;
}

.registration-form {
    width: 100%;
    max-width: 700px;
    background-color: white;
    padding: 2em;
    border-radius: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    animation: fadeIn 0.8s ease;
}

.registration-form h2 {
    font-size: 2em;
    margin-bottom: 1em;
    text-align: center;
    color: #2c3e50;
    border-bottom: 2px solid #2980b9;
    padding-bottom: 0.5em;
    text-transform: uppercase;
}

/* Form Layout */
.registration-form form {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1em 2em;
}

.registration-form .form-group {
    display: flex;
    flex-direction: column;
}

.registration-form .form-group label {
    margin-bottom: 0.5em;
    font-weight: bold;
    color: #2c3e50;
}

.registration-form .form-group input,
.registration-form .form-group select {
    padding: 0.75em;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1em;
    background-color: #f9f9f9;
    transition: border-color 0.3s, box-shadow 0.3s;
}

.registration-form .form-group input:focus,
.registration-form .form-group select:focus {
    border-color: #2980b9;
    box-shadow: 0 0 5px rgba(41, 128, 185, 0.5);
    outline: none;
}

/* Button Styles */
.registration-form button {
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

.registration-form button:hover {
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
            <section class="registration-form">
                <h2>Register New Customer</h2>
                <form id="reg" action="register" method="post">
                    <div class="form-group">
                        <label for="first-name">First Name:</label>
                        <input type="text" id="first-name" name="fname" required>
                    </div>
                    <div class="form-group">
                        <label for="last-name">Last Name:</label>
                        <input type="text" id="last-name" name="lname" required>
                    </div>
                    <div class="form-group">
                        <label for="age">Age:</label>
                        <input type="number" id="age" name="age" required>
                    </div>
                    <div class="form-group">
                        <label for="gender">Gender:</label>
                        <select id="gender" name="gender" required>
                            <option value="" disabled selected>Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="city">City:</label>
                        <select id="city" name="city" required>
                            <option value="" disabled selected>Select City</option>
                            <option value="Chennai">Chennai</option>
							 <option value="Hyderabad">Hyderabad</option>
							 <option value="Vijayawada">Vijayawada</option>
							 <option value="LAM">LAM</option>
							 <option value="Banglore">Banglore</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="account-number">Account Number:</label>
                        <input type="text" id="accNum" name="accNum" required>
                    </div>
                    <div class="form-group">
                        <label for="balance">Balance:</label>
                        <input type="number" id="Balance" name="Balance"required>
                    </div>
                    <div class="form-group">
                        <label for="account-type">Account Type:</label>
                        <select  name="accType" id="accType"  required>
                            <option value="" disabled selected>Select Account Type</option>
                            <option value="Savings">Savings</option>
                            <option value="Current">Current</option>
                        </select>
                    </div>
                    <button type="submit" >Register</button>
                </form>
                
            </section>
        </main>

        <footer>
            <p>&copy; 2024 TBanking. All rights reserved.</p>
        </footer>
    </div>
</body>
<script type="text/javascript">
 <%
   try{
	   int status = (int)request.getAttribute("val");
	   if(status>0){%>
		  alert("Successfully Registered!"); 
	  <% }
   }
 catch(Exception e){
	 }
 
 %>



</script>
</html>


