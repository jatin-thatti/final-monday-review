
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="auth.jsp" %>

    <%	response.setHeader("Cache-Control", "no-cache,no-store,must revalidate");
 %>
      

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banking Services</title>
    <link rel="stylesheet" href="style.css">
    <style>
    
    	body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
    /* background-color: linear-gradient(80deg,#cec1e4, #9ec2d3); */
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

/* Services Section */
main {
    padding: 2em;
    text-align: center;
    flex-grow: 1;
}

.services {
    max-width: 900px;
    margin: 0 auto;
}

.services h2 {
    font-size: 2em; 
    margin-bottom: 1.5em;
}

.service-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1em;
}
.user{
    height: 75%;
    margin-top: -4%;
}
img{
    /* max-height: fit-content;
    box-sizing: content-box; */
    /* width: auto; */
    height: 140%;
    margin-top: -8%;
}
.aTags{
    color: white;
    text-decoration: none;
    background: linear-gradient(135deg, #2980b9, #6dd5fa);
    border-radius: 10px;
    padding: 0.5em;
    /* margin-bottom: -2%; */
    margin-top: -2%;
    width: 100%;
    font-size: large;
}

.service-box {
    background: linear-gradient(135deg, #2980b9, #6dd5fa);
    color: white;
    padding: 2.1em;
    text-decoration: none;
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: transform 0.5s ease, background-color 0.7s;
    flex-wrap: wrap;
}

.service-box:hover {
    background: linear-gradient(135deg, #b6b7b8, #0d72c5);
    transform: scale(1.05); /* Slightly enlarge the box */
}

/* Specific Sizes for Boxes */
.small-box {
    height: 150px;
}

.large-box {
    grid-column: span 3;
    height: 150px;
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
                    <li><a href="home.jsp">Home</a></li>
                    <li class="home">TBanking</li>
                    <li><a href="logout">Logout</a></li>
                </ul>
            </nav>
        </header>
        
        <main>
            <section class="services">
                <h2>Services</h2>
                <div class="service-grid">
                    <div class="service-box small-box">
                        <!-- <img class="user" src="https://lh5.googleusercontent.com/proxy/1oMsardOZ_PP6guVkabSvR4F2egPexgqwX7O_AudSqmdXVlRmTPBfz1H5eIiRPzjJC5x7Z4HiNXh040a75PJSE7hiPXgY_bymQU8mto-rhcuu7xEE2cQ9w"> -->
                        <img class="user" src="https://img.icons8.com/?size=160&id=6xOvUD3RmCmC&format=png">
                        <a href="user/register" class="aTags"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                            <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
                          </svg> Register Customer</a>
                    </div>
                    <div class="service-box small-box">
                        <img class="user" src="https://cdn.prod.website-files.com/63568db16d1404b13565b366/641077dc42a4acee97404661_external-contacts-manual-update.png" alt="">
                        <a href="user/update" class="aTags"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                            <path fill-rule="evenodd" d="M1 13.5A1.5 2 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                          </svg> Update Customer</a>
                    </div>
                    <div class="service-box small-box">
                        <img class="user" src="https://lh4.googleusercontent.com/proxy/ZlPl_rgNtxOWn4HCvWvHm6GfnX2lbOVSaRtIJ-XHn4MNuOTg7iymncYMB6MeUBoKIobW5_zpCPjnAV8X1sJoeSsg92NXSCtXZ3Bj" alt="">
                        <a href="user/delete" class="aTags"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                            <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5"/>
                          </svg> Delete Customer</a>
                    </div>
                    <div class="service-box large-box">
                        <!-- <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrrUizEuRxTeWxadTD-KC_9k8Poq1pSE_0og&s" alt=""> -->
                        <img src="https://cdn.prod.website-files.com/63fc977c14aaea404dce4439/64aff0f0601e782d76bfdeab_64808a9594b4cf9534503339_cover%2520image%2520(4).webp" alt="">
                        <a href="user/view" class="aTags"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
                            <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5m.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1z"/>
                          </svg> View All Customers</a>
                    </div>
                </div>
            </section>
        </main>

        <footer>
            <p>&copy; 2024 TBanking. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>
