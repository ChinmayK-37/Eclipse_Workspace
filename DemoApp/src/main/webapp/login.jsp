<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login and Registration</title>
</head>
<body bgcolor="yellow">

<% 
    if(request.getAttribute("error") != null){
        out.println("<p style='color:red'>" + request.getAttribute("error") + "</p>");
    }
%>

<h1>Welcome!</h1>	

<!-- Forms Side by Side -->
<table border="0" cellpadding="20">
    <tr>
        <!-- Login Form -->
        <td style="vertical-align: top; background-color: lightblue;">
            <h2>Login</h2>
            <form action="login" method="post">
                Enter Your Name : <input type="text" name="uname"><br><br>
                Enter Password : <input type="password" name="password"><br><br>
                <input type="submit" value="Login">
            </form>
        </td>

        <!-- Registration Form -->
        <td style="vertical-align: top; background-color: lightgreen;">
            <h2>Register</h2>
            <form action="register" method="post">
                Enter Full Name : <input type="text" name="fullname"><br><br>
                Enter Username : <input type="text" name="uname"><br><br>
                Enter Password : <input type="password" name="password"><br><br>
                Confirm Password : <input type="password" name="confirmpassword"><br><br>
                <input type="submit" value="Register">
            </form>
        </td>
    </tr>
</table>

<br>
<a href="aboutUs.jsp">About us</a>

</body>
</html>
