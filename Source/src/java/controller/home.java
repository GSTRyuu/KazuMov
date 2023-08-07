/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import model.phim;

/**
 *
 * @author fpt
 */
public class home extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        phim p = new phim();
        //All movies
        ArrayList<phim> top = new ArrayList<phim>();
        top = p.getList7phim();
        req.setAttribute("top", top);
        //Adults
        req.setAttribute("adults", p.getListphimChoice("2"));
        //Kids
        req.setAttribute("kids", p.getListphimChoice("3"));
        //Comedy
        req.setAttribute("com", p.getListphimChoice("4"));
        
        req.getRequestDispatcher("home.jsp").forward(req, resp);
    }
    
}
