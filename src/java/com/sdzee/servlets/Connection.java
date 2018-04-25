/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sdzee.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Ad;
import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.DriverManager;
import java.util.List;

/**
 *
 * @author nguyen hai dang
 */
@WebServlet(name = "Connection", urlPatterns = {"/connection"})
public class Connection extends HttpServlet {

    public static final String VUE = "/WEB-INF/connection.jsp";

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
        String username = request.getParameter("username");
        String userpassword = request.getParameter("userpassword");
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/ema_caisse";
        String utilisateur = "root"; // A SIGNALER AU GROUPE
        String motDePasse = "";  // IDEM
        try {
            conn = (Connection) DriverManager.getConnection(url, utilisateur, motDePasse);
        } catch (Exception ex) {
            
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
