package com.authmvc.dao;

import com.authmvc.model.User;
import com.authmvc.util.DBConnection;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;

import java.sql.*;

public class UserDao{

    private ServletContext ctx;

    public UserDao(ServletContext ctx){
        this.ctx=ctx;
    }

    public boolean validateUser(User user) throws SQLException {

        try (Connection conn = DBConnection.getConnection(ctx)) {
            
            String queryString = "SELECT * FROM USERS WHERE username=? AND password=?";
            PreparedStatement psmt = conn.prepareStatement(queryString);
            
            psmt.setString(1, user.getUsername());
            psmt.setString(2, user.getPassword());
            
            ResultSet rs =psmt.executeQuery();

            if(rs.next()){
                System.out.println("Login successful!");
                return true;	
            }else{
                System.out.println("No user found!");
                return false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;


    }

    public boolean registerUser(User user){
        try (Connection conn = DBConnection.getConnection(ctx)) {
            
            String queryString = "Insert into users (username,password) values (?,?)";
            PreparedStatement psmt = conn.prepareStatement(queryString);
            
            psmt.setString(1, user.getUsername());
            psmt.setString(2, user.getPassword());
            
            int rowInserted=psmt.executeUpdate();

            if(rowInserted > 0){
                System.out.println("Registeration successful!");
                return true;	
            }else{
                System.out.println("Registeration Failed !");
                return false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

}
