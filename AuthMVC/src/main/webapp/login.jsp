<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #444;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: border 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #6a11cb;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px 0;
            background-color: #6a11cb;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #4c0892;
        }
        
        .nav-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 18px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .nav-link:hover {
            background-color: #2c80b4;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="loginservlet" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login">
        </form>
        	
        	<a href="aboutus.jsp" class="nav-link">About us</a>
    </div>
</body>
</html>
