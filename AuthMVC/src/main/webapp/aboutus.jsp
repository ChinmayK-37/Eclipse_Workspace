<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: center;
            padding: 40px;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
        }

        h2, h3 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        ul {
            padding-left: 20px;
            margin-bottom: 30px;
        }

        ul li {
            margin-bottom: 10px;
        }

        p {
            margin-bottom: 25px;
        }

        .footer {
            margin-top: 40px;
            font-style: italic;
            text-align: right;
            color: #555;
        }

        .highlight {
            font-weight: bold;
            color: #0066cc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>👨‍💻 About This Project</h2>

        <p>
            This web application demonstrates a basic <span class="highlight">Authentication System</span> using the 
            <span class="highlight">Model-View-Controller (MVC)</span> architecture.
        </p>

        <h3>📌 Technologies Used</h3>
        <ul>
            <li>Java (Servlets & JSP)</li>
            <li>MySQL Database</li>
            <li>Maven (Project Management)</li>
            <li>Apache Tomcat (Server)</li>
        </ul>

        <h3>🎯 Features</h3>
        <ul>
            <li>User Registration and Login</li>
            <li>Session Management</li>
            <li>Modular Code Structure (DAO, Utility classes)</li>
            <li>Basic error handling</li>
        </ul>

        <h3>🛠 Future Enhancements</h3>
        <ul>
            <li>Form validations</li>
            <li>Better UI with CSS/Bootstrap</li>
            <li>Logger integration</li>
            <li>Hashed passwords</li>
            <li>Role-based access</li>
        </ul>

        <p>
            This is my first full-stack Java web project, and it's a solid foundation for building bigger, more advanced applications in the future.
        </p>

        <p class="footer">— Developed by Chinmay Kulkarni</p>
    </div>
</body>
</html>
