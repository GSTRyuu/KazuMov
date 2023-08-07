///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package controller;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import java.io.IOException;
//import model.tatca;
//
///**
// *
// * @author fpt
// */
//public class phong extends HttpServlet {
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        HttpSession session = req.getSession();
//        if (session.getAttribute("acc") == null) {
//            req.getRequestDispatcher("login.jsp").forward(req, resp);
//        }
//        tatca t = new tatca();
//        String sid = req.getParameter("suat_chieu_id");
//        session.removeAttribute("suat_chieu_id");
//        session.setAttribute("suat_chieu_id", sid);
//        req.setAttribute("t", t.getPhong(session.getAttribute("rap_id").toString(), sid));
//        req.getRequestDispatcher("phong.jsp").forward(req, resp);
//
//    }
//
//}
