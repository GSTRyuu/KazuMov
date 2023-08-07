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
import model.tatca;
import model.ticket;

/**
 *
 * @author fpt
 */
public class rap extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if(session.getAttribute("acc") == null){
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
        String id = req.getParameter("id");
        session.removeAttribute("phim_id");
        session.setAttribute("phim_id", id);
        tatca t = new tatca();
        req.setAttribute("t", t.getRapByPhimId(id));
        req.getRequestDispatcher("rap.jsp").forward(req, resp);
    }
    
}
