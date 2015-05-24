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
import javax.persistence.NoResultException;
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
        HttpSession session = request.getSession(true);
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        String user_name = request.getParameter("user_name");
        String password = request.getParameter("password");
        Query query = entityManager.createQuery("SELECT E FROM UserInfo E WHERE E.user_name = :user_name");
        query.setParameter("user_name", user_name);
        UserInfo user_info = null;
        try{
            user_info = (UserInfo) query.getSingleResult();
        }
        catch(NoResultException e){
        }
        
        if(user_info == null)
        {
            //tai khoan khong ton tai
            session.setAttribute("user_name", "1");
            response.sendRedirect("login.jsp");
        }
        else{
            if(user_info.getPassword().equals(password)){
                
                session.setAttribute("user_name", user_name);
                response.sendRedirect("usercp.jsp");
                //response.getWriter().println("Đăng nhập thành công.");
            }
            else{
                //sai mat khau
                session.setAttribute("user_name", "1");
                response.sendRedirect("login.jsp");
            }
        }
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
