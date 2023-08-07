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


/**
 *
 * @author fpt
 */
public class ghe extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("acc") == null) {
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
        tatca t = new tatca();

        String kiem = req.getParameter("kiem");
        if (kiem == null) {
            String sid = req.getParameter("suat_chieu_id");
            session.removeAttribute("suat_chieu_id");
            session.setAttribute("suat_chieu_id", sid);
            int phid = t.getPid(session.getAttribute("rap_id").toString(), sid);
            session.removeAttribute("phong_id");
            session.setAttribute("phong_id", phid);
        }
        req.setAttribute("t", t.getGhe(session.getAttribute("phong_id").toString()));
        req.getRequestDispatcher("ghe.jsp").forward(req, resp);
    }

}
