<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
</head>
<body>
	<%
	response.setHeader("Cache-control","no-cache,no-store,must-revalidate");

	
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.jsp");
		}
		
	%>
	
	<h1>Welcome <%= session.getAttribute("uname") %> !!!</h1>
	<br>
	
	<a href="videos.jsp">Videos Here...</a>
	
	<form action="logout">
		<input type="submit" value="Logout" bgcolor="red">
	</form>
	
	
</body>
</html>