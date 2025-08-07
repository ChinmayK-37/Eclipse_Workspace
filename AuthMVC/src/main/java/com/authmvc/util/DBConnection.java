package com.authmvc.util;

import java.sql.*;

import jakarta.servlet.ServletContext;


public class DBConnection {

    public static Connection getConnection(ServletContext ctx){
        String url =  ctx.getInitParameter("dburl");
        String dbname =  ctx.getInitParameter("dbname");
        String dbpass =  ctx.getInitParameter("dbpass");
        
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, dbname, dbpass);
            return conn;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
