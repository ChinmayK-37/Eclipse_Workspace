<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Here !</title>
</head>
<body bgcolor="yellow">


	<% 
	
		if(request.getAttribute("error")!=null){
			out.println(request.getAttribute("error"));
		}
	
	%>
	<h1>Form!</h1>	
	<form action="login" method="post">
	Enter Your Name : <input type="text" name="uname"><br>
	Enter Password: <input type="password" name="password"><br>
	<input type="submit">
	</form>	
	
	<a href="aboutUs.jsp">About us</a>
</body>
</html>	