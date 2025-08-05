<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is DB tut</title>
</head>
<body>

	<%
		String url = "jdbc:mysql://localhost:3306/sl_db";
		String username = "root";
		String password = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");	
		
		Connection conn = DriverManager.getConnection(url,username,password);
		
		PreparedStatement pstmt = null;
		
        String QueryString = "Insert into users (full_name,email,password) values (?,?,?)";
        pstmt = conn.prepareStatement(QueryString);
        
        pstmt.setString(1,"Chinmay Kulkarni");
        pstmt.setString(2,"ck@gmail.com");
        pstmt.setString(3, "973020");

        pstmt.executeUpdate();
        System.out.println("data is sent");
		 
	%>

</body>
</html>