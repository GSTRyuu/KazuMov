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
import model.phim;
import model.user;

/**
 *
 * @author fpt
 */
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ten = req.getParameter("user");
        String mat = req.getParameter("pass");
        user u = new user();
        if (u.getLogin(ten, mat) == null) {
            req.setAttribute("mess", "Sai mat khau hoac tai khoan");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            HttpSession session = req.getSession();
            session.setAttribute("acc", u.getLogin(ten, mat));
            session.removeAttribute("uid");
            session.setAttribute("uid", u.getNguoi_dung_id());

            if (session.getAttribute("test") == null) {
                resp.sendRedirect("home");
            } else {
                phim p = new phim();
                req.setAttribute("p", p.getphim(session.getAttribute("test").toString()));
                req.getRequestDispatcher("detail.jsp").forward(req, resp);
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
