package com.cyken.login;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



public class DBVerify extends HttpServlet{
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String uname = (String) req.getAttribute("uname");
		String pass = (String)req.getAttribute("password");
		
		ServletConfig cfg = getServletConfig();
		
		String url = cfg.getInitParameter("dburl");
		String dbname = cfg.getInitParameter("dbname");
		String dbpass = cfg.getInitParameter("dbpass");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,dbname,dbpass);
			
			String query = "SELECT * FROM users where full_name = ? AND password = ?";
			PreparedStatement pstm =  conn.prepareStatement(query); 
			
			pstm.setString(1, uname);
            pstm.setString(2, pass);
            
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                System.out.println("Login successful!");
                	HttpSession session = req.getSession();
                
                	session.setAttribute("uname", uname);
                	res.sendRedirect("welcome.jsp");
            } else {
                System.out.println("Invalid username or password.");
                String error = "Invalid username or password.";
                req.setAttribute("error",error);
                res.sendRedirect("login.jsp");
                
            }
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}		
	}

}
