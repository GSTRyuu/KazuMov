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
public class movie extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        phim p = new phim();
        if ("1".equals(req.getParameter("oo"))) {
        req.setAttribute("data", p.getList7phim());
        req.getRequestDispatcher("movies.jsp").forward(req, resp);
        }else if("5".equals(req.getParameter("oo"))){
        String id = req.getParameter("fot");
        req.setAttribute("data", p.getListphimChoice(id));
        req.getRequestDispatcher("movies.jsp").forward(req, resp);
        }
        else{
        ArrayList<phim> data = new ArrayList<phim>();
        data = p.getListphim();
        req.setAttribute("data", data);
        req.getRequestDispatcher("movies.jsp").forward(req, resp);
        }
    }

}
