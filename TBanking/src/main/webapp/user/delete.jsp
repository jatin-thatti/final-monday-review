
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
    <title>Delete Customer</title>
    
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

/* Delete Form Section */
main {
    padding: 2em;
    flex-grow: 1;
    display: flex;
    justify-content: center;
    align-items: center;
}

.delete-form {
    width: 100%;
    max-width: 500px;
    background-color: white;
    padding: 2em;
    border-radius: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    animation: fadeIn 0.8s ease;
}

.delete-form h2 {
    font-size: 2em;
    margin-bottom: 1em;
    text-align: center;
    color: #2c3e50;
    border-bottom: 2px solid #2980b9;
    padding-bottom: 0.5em;
    text-transform: uppercase;
}

.delete-form .form-group {
    display: flex;
    flex-direction: column;
    margin-bottom: 1em;
}

.delete-form .form-group label {
    margin-bottom: 0.5em;
    font-weight: bold;
    color: #2c3e50;
}

.delete-form .form-group input {
    padding: 0.75em;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1em;
    background-color: #f9f9f9;
    transition: border-color 0.3s, box-shadow 0.3s;
}

.delete-form .form-group input:focus {
    border-color: #2980b9;
    box-shadow: 0 0 5px rgba(41, 128, 185, 0.5);
    outline: none;
}

/* Button Styles */
.delete-form button {
    padding: 0.75em;
    background-color: #2980b9;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 1.2em;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
    width: 50%;
margin-left:130px;
}

.delete-form button:hover {
    background-color: #c0392b;
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
            <section class="delete-form">
                <h2>Delete Customer</h2>
                <form action="delete" method="post" id="deleteForm">
                    <div class="form-group">
                        <label for="account-number">Account Number</label>
                        <input type="text" id="accountno" name="accountno" placeholder="Enter Account Number" required>
                    </div>
                    <button onclick="deleteCustomer()">Delete Customer</button>
                </form>
            </section>
        </main>

        <footer>
            <p>&copy; 2024 TBanking. All rights reserved.</p>
        </footer>
    </div>
</body>

<script>

var deleteCustomer = function()
{
	if(confirm("Are you sure want to Delete the Customer"))
	{
		document.getElementById('deleteBtn').click();
		
	}
	else{document.getElementById('deleteForm').submit();}
}

</script>


</html>
