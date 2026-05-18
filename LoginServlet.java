package com.blooddonation.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Dummy Login Validation
        if(email.equals("admin@gmail.com") && password.equals("1234")) {

            // Redirect to dashboard page
            response.sendRedirect("dashboard.html");

        } else {

            // Redirect back to login page
            response.setContentType("text/html");

            response.getWriter().println(
                "<h2 style='color:red;text-align:center;'>Invalid Email or Password ❌</h2>"
            );

            response.getWriter().println(
                "<div style='text-align:center;'>"
                + "<a href='login.html'>Try Again</a>"
                + "</div>"
            );
        }
    }
}
