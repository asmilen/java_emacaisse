/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sdzee.servlets;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nguyen hai dang
 */
@WebServlet(name = "Register", urlPatterns = {"/register"})
public class Register extends HttpServlet {

    public static final String VUE = "/WEB-INF/register.jsp";
    public static final String Homepage = "/index.jsp";

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String firstname = request.getParameter("first_name");
        String lastname = request.getParameter("last_name");
        String phone = request.getParameter("phone");
        String dateofbirth = request.getParameter("date_of_birth");
        MyDb db = new MyDb();
        java.sql.Connection con = db.getCon();
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("insert into users (email,password,first_name,last_name,phone,date_of_birth) values ('" + 
                    email + "','" + pass + "','" + firstname + "','" + lastname + "','" + phone + "','" + dateofbirth + "')");
            out.println("data inserted sucessfully");
        } catch (SQLException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
