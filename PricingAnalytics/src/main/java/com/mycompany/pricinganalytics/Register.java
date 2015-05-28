/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.MD5;
import PricingAnalyticsObject.UserInfo;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Quoc Huy Ngo
 */
public class Register extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        UserInfo user_info = new UserInfo(request.getParameter("user_name"), MD5.getMD5(request.getParameter("password")), request.getParameter("email"), request.getParameter("full_name"), request.getParameter("company"), request.getParameter("website"), request.getParameter("address"), request.getParameter("country"), request.getParameter("phone"), request.getParameter("fax"), 1, request.getParameter("company_description"));
        HttpSession session = request.getSession(true);
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        //check user_name, email 's exits
        Query query_userName = entityManager.createQuery("SELECT E.user_id FROM UserInfo E WHERE E.user_name= :user_name");
        query_userName.setParameter("user_name", user_info.getUserName());
        List result_userName = null;
        result_userName = query_userName.getResultList();
        
        Query query_email = entityManager.createQuery("SELECT E.user_id FROM UserInfo E WHERE E.email= :email");
        query_email.setParameter("email", user_info.getEmail());
        List result_email = query_email.getResultList();
        
        if (!result_userName.isEmpty()) {
            session.setAttribute("error_register", 1);
            //response.getWriter().println("Tài khoản đã tồn tại. Vui lòng chọn tài khoản khác");
        } else if (!result_email.isEmpty()) {
            //response.getWriter().println("Email đã được đăng ký");
            session.setAttribute("error_register", 2);

        } else {
            entityManager.getTransaction().begin();
            entityManager.persist(user_info);
            entityManager.getTransaction().commit();
            entityManager.close();
            response.getWriter().println("Đăng ký thành công");
            response.sendRedirect("login.jsp");
        }
        
    }
}
