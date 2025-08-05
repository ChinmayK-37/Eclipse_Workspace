package com.cyken;

import java.io.PrintWriter;
import java.io.IOException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/add")

public class AddServlet extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException{
		String name = "Chinmay";
		int password = 1616;
		
		String n= req.getParameter("name");
		int p = Integer.parseInt(req.getParameter("password"));
		
		System.out.println("Loged in");
		
		if(name.equals(n) && password == p) {
			Cookie cookie_name = new Cookie("name",name+"");
			Cookie cookie_pass = new Cookie("password",password+"");
			res.addCookie(cookie_name);	
			res.addCookie(cookie_pass);
			res.sendRedirect("sq");
		}else{
			PrintWriter out = res.getWriter();
			out.println("<h1>Wrong Credentials!!!</h1>");
			
		}
		
		
		
	}
}
