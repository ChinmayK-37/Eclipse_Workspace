package com.cyken.login;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")

public class Login extends HttpServlet{
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		String uname =req.getParameter("uname");
		String pass = req.getParameter("password");
		PrintWriter out = res.getWriter();
		
		System.out.println("Username: " + uname);
		System.out.println("Password: " + pass);

		if(uname == null || uname.trim().isEmpty() || pass == null || pass.trim().isEmpty()) {
			req.setAttribute("error", "Please enter your details.");
	        RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
	        rd.forward(req, res);  // ✅ show the same page with error message
		}else{
			System.out.println("Verfying..");
			RequestDispatcher rd = req.getRequestDispatcher("dbverify");
			req.setAttribute("uname",uname);
			req.setAttribute("password",pass);
			rd.forward(req, res);
			
		}
		
	}

}