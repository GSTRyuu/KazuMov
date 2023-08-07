/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import model.phim;

/**
 *
 * @author fpt
 */
public class search extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        phim p = new phim();
        //All movies
        String search = req.getParameter("search");
        ArrayList<phim> data = new ArrayList<phim>();
        data = p.getListphimSearch(search);
        req.setAttribute("data", data);
        req.setAttribute("ser", search);
//        session.removeAttribute("sera");
//        session.setAttribute("sera", data);
        req.getRequestDispatcher("movies.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
    
}
