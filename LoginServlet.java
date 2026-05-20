package com.blooddonation.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mus.entity.UserEntity;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/userlogin")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	

        // Get Form Data
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Check Empty Fields
        if(email != null && password != null
                && !email.isEmpty()
                && !password.isEmpty()) {
        	UserEntity loggedInUser = isValidUser(email, password);
        	if(null != loggedInUser) {
                HttpSession session = request.getSession();
                session.setAttribute("loggedInUser", loggedInUser);
                response.sendRedirect("new_user_dashboard.jsp");
        	}
            
        } else {
            response.setContentType("text/html");
            response.getWriter().println( "<h2 style='color:red;text-align:center;'>Please Enter Email & Password ❌</h2>");
            response.getWriter().println(
                    "<div style='text-align:center;'>"
                    + "<a href='userLogin.html'>Try Again</a>"
                    + "</div>"
            );
        }
    }
    
    public UserEntity isValidUser(String email, String password) {
    	UserEntity user = new UserEntity();
    	// Database connection details
    	String url = "jdbc:mysql://localhost:3306/blood_donation";
        String db_user = "root";
        String db_password = "root";

        // SQL query using placeholders (?) to prevent SQL injection
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";

        try{
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection conn = DriverManager.getConnection(url, db_user, db_password);
            PreparedStatement pstmt = conn.prepareStatement(sql);
            // Set values for the placeholders
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            try (ResultSet rs = pstmt.executeQuery()) {
                // If the ResultSet has at least one row, the user is valid
                if (rs.next()) {
                	int id = rs.getInt("id");
                    String username = rs.getString("name");
                    email = rs.getString("email");
                    String role = rs.getString("role");
                    
                    return new UserEntity(id, username, email,"",role);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return user;
    }
}
