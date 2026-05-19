package com.blooddonation.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mus.entity.UserEntity;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Handle POST Request
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form values
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String bloodgroup = request.getParameter("bloodgroup");
        String city = request.getParameter("city");
        
        UserEntity user = new UserEntity(fullname,email,password,"USER");

//        response.setContentType("text/html");
        UserEntity newUser =createNewUser(user);
//        PrintWriter out = response.getWriter();

        RequestDispatcher rd=request.getRequestDispatcher("/new_user_dashboard.jsp");  
        rd.forward(request, response);  
        
//        // Success Page
//        out.println("<html>");
//        out.println("<head>");
//        out.println("<title>Registration Success</title>");
//        out.println("</head>");
//
//        out.println("<body style='font-family:Arial;background:#fff0f3;text-align:center;padding-top:100px;'>");
//
//        out.println("<h1 style='color:green;'>Registration Successful ❤️</h1>");
//
//        out.println("<h2>Welcome " + newUser.getName() + "</h2>");
//
//        out.println("<p>Email : " + newUser.getEmail() + "</p>");
//        out.println("<p>Blood Group : " + bloodgroup + "</p>");
//        out.println("<p>City : " + city + "</p>");
//
//        out.println("<br>");
//
//        out.println("<a href='login.html'>");
//        out.println("<button style='padding:12px 25px;background:#e63946;color:white;border:none;border-radius:10px;cursor:pointer;'>");
//        out.println("Go To Login");
//        out.println("</button>");
//        out.println("</a>");
//
//        out.println("</body>");
//        out.println("</html>");
    }
    
    public UserEntity createNewUser(UserEntity user) {
    	 // 1. Connection details
        String url = "jdbc:mysql://localhost:3306/blood_donation";
        String db_user = "root";
        String db_password = "root";
        

        // 2. SQL Insert query with placeholders (?)
        String sql = "insert into users(name, email,password,role) values (?,?,?,?);";

        // 3. Establish connection and execute
        // Try-with-resources automatically closes the connection
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection conn = DriverManager.getConnection(url, db_user, db_password);
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            // 4. Bind values to the placeholders
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getRole());
            

            // 5. Execute the update
            int rowsAffected = pstmt.executeUpdate();
            
            if (rowsAffected > 0) {
                System.out.println("A new user was inserted successfully!");
                
            }

        } catch (SQLException e) {
            e.printStackTrace(); // Handle database errors
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return user;
    	 
    }
}