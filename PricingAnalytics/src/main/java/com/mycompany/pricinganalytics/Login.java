/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.UserInfo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Quoc Huy Ngo
 */
public class Login extends HttpServlet {  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        String user_name = request.getParameter("user_name");
        String password = request.getParameter("password");
        Query query = entityManager.createQuery("SELECT E FROM UserInfo E WHERE E.user_name = :user_name");
        query.setParameter("user_name", user_name);
        UserInfo user_info = null;
        user_info = (UserInfo) query.getSingleResult();
        if(user_info == null)
        {
            response.getWriter().println("Không tìm thấy tài khoản.");
        }
        else{
            if(user_info.getPassword().equals(password)){
                HttpSession session = request.getSession(true);
                session.setAttribute("sessionUserName", user_name);
                response.sendRedirect("index.jsp");
                //response.getWriter().println("Đăng nhập thành công.");
            }
            else{
                response.getWriter().println("Sai mật khẩu.");
            }
        }
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
