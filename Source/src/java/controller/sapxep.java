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
import model.ve;

/**
 *
 * @author fpt
 */
public class sapxep extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ve v = new ve();
        HttpSession session = req.getSession();
        String lay = req.getParameter("lay");
        
        if ("0".equals(lay)) {
            req.setAttribute("v", v.getListVeAsc(session.getAttribute("uid").toString()));
        } else {
            req.setAttribute("v", v.getListVeDesc(session.getAttribute("uid").toString()));
        }
        req.getRequestDispatcher("lsmv.jsp").forward(req, resp);
    }

}
