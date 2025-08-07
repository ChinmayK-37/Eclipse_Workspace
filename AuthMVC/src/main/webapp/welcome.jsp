<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #fceabb, #f8b500);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 40px 35px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }

        h2 {
            color: #333;
        }

        p {
            color: #555;
            line-height: 1.6;
        }

        ul {
            margin-left: 20px;
            padding-left: 0;
            color: #444;
        }

        ul li {
            margin-bottom: 8px;
        }

        .logout-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 18px;
            background-color: #ff6f00;
            color: white;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #e65100;
        }
    </style>
</head>
<body>
    <%
		
    		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        String username = (String) session.getAttribute("uname");
        if (username == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>

    <div class="container">
        <h2>Welcome, <%= username %>! 🎉</h2>
        <p>Thank you for logging in!</p>

        <h3>About This Project</h3>
        <p>This project is an <strong>Authentication MVC Web App</strong> built using JSP, Servlets, and MySQL. It includes:</p>
        <ul>
            <li>User Registration and Login</li>
            <li>Secure Password Validation</li>
            <li>MVC Architecture Pattern</li>
            <li>Modular DAO and Utility Classes</li>
        </ul>

        <p>🚀 More features and enhancements will be added soon!</p>

        <form action="logout">
		<input type="submit" value="Logout"class="logout-btn">
		</form>
    </div>
</body>
</html>
