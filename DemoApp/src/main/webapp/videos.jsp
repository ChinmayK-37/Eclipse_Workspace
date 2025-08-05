<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos</title>
</head>
<body>
	
	<%
		response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
		
	
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login.jsp");
		}
		
	%>	
	
	<iframe width="560" height="315" src="https://www.youtube.com/embed/dNwxvuR41gw?si=wK8o0fxTA8pqWVhH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
	
	</iframe>
	

    <br>
    <form action="logout">
		<input type="submit" value="Logout" bgcolor="red">
	</form>
</body>
</html>