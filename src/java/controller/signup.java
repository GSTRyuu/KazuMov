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
import model.user;

/**
 *
 * @author fpt
 */
public class signup extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ten = req.getParameter("user");
        String mat = req.getParameter("pass");
        String remat = req.getParameter("repass");
        user u = new user();
        if(!mat.equals(remat)){
            req.setAttribute("mess", "Mat khau nhap khong trung");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }else{
            if(u.check(ten)){
            req.setAttribute("mess", "Tai khoan da ton tai");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
            }else{
            u.signUp(ten, mat);
            HttpSession session = req.getSession();
            session.removeAttribute("acc");
            session.setAttribute("acc", u.getLogin(ten, mat));
            session.removeAttribute("uid");
            session.setAttribute("uid", u.getNguoi_dung_id());
            resp.sendRedirect("home");
            }
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }
    
}
