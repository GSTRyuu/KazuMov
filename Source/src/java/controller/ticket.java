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
public class ticket extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if(session.getAttribute("acc") == null){
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
        session.setAttribute("kiem", "daco");
        String ngay = req.getParameter("ngay");
        String pid = session.getAttribute("phim_id").toString();
        String rid = session.getAttribute("rap_id").toString();
        String sid = session.getAttribute("suat_chieu_id").toString();
        String phid = session.getAttribute("phong_id").toString();
        String soghe = session.getAttribute("so_ghe").toString();
        String uid = session.getAttribute("uid").toString();
        tatca t = new tatca();
        int tongtien = t.getTongTien(pid);
        req.setAttribute("pid",t.getphim(pid));
        req.setAttribute("sid", t.getSuat(sid));
        req.setAttribute("rid", t.getRap(rid));
        req.setAttribute("phid", t.getPhong(phid));
        req.setAttribute("so", soghe);
        req.setAttribute("tongtien", tongtien);
        t.addVe(ngay, tongtien, sid, uid, soghe);
        req.getRequestDispatcher("ticket.jsp").forward(req, resp);
    }

}
