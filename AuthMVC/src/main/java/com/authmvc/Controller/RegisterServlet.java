package com.authmvc.Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.authmvc.dao.UserDao;
import com.authmvc.model.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet("/registerservlet")

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		String uname =req.getParameter("username");
		String pass = req.getParameter("password");
		PrintWriter out = res.getWriter();

		System.out.println("Username: " + uname);
		System.out.println("Password: " + pass);

        ServletContext ctx = getServletContext();

		if(uname == null || uname.trim().isEmpty() || pass == null || pass.trim().isEmpty()) {
			req.setAttribute("error", "Please enter your details.");
	        RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
	        rd.forward(req, res);  // ✅ show the same page with error message
		}else{
			System.out.println("Verfying..");
            
			User user = new User(uname,pass);
            
			UserDao Dao = new UserDao(ctx);
           
			if(Dao.registerUser(user)){
			    HttpSession session = req.getSession();
			    session.setAttribute("uname", uname);
			    res.sendRedirect("welcome.jsp");		
			}
		}
		
	}
}
