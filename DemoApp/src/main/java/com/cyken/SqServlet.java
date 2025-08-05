package com.cyken;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/sq")

public class SqServlet extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		Cookie cookies[] = req.getCookies();
		
		String name ="";
		int pass = 0;
		
		for(Cookie c : cookies) {
			if(c.getName().equals("name")) {
				name =c.getValue();
			}else if(c.getName().equals("password")) {
				pass = Integer.parseInt(c.getValue());
			}
		}
		
		PrintWriter out = res.getWriter();
		out.println("<h1> Welcome to my website : "+name+"</h1>");	
	}
}
