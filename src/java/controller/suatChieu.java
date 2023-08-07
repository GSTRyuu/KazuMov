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
public class suatChieu extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if(session.getAttribute("acc") == null){
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
        String n = req.getParameter("n");
        String h = req.getParameter("h");
        String m = req.getParameter("m");
        String jj = req.getParameter("jj");
        session.setAttribute("h", h);
        session.setAttribute("m", m);
        session.setAttribute("jj", jj);
        String id = req.getParameter("rap_id");
        session.removeAttribute("rap_id");
        session.setAttribute("rap_id", id);
        tatca t = new tatca();
        req.setAttribute("t",t.getSuat(session.getAttribute("phim_id").toString(), id, n));
        req.getRequestDispatcher("suat_chieu.jsp").forward(req, resp);
    }

}
