/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Quoc Huy Ngo
 */
public class ProductAdd extends HttpServlet {

    int key = 0;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(true);
        String id = (String) session.getAttribute("user_id");
        int user_id = 0;
        if(id != null)
           user_id = Integer.parseInt(id);
        String category_key = (String) session.getAttribute("keyid");
         if(category_key != null)
             key = Integer.parseInt(category_key);
        String product_name = request.getParameter("product_name");
        //Date dNow = new Date( );
        //SimpleDateFormat format_time = new SimpleDateFormat ("yyyy-MM-dd");
        //String date = format_time.format(dNow);
        long millis = new java.util.Date().getTime();
        Date date = new Date(millis); //= new Date();
        String description = request.getParameter("product_description");
        String price = request.getParameter("product_price");
        String image = "";
        Product product = new Product(user_id, key, product_name, date ,description, price, image);
        //Product product = new Product();
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(product);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         String category_key = request.getParameter("keyid");
         if(category_key != null)
             key = Integer.parseInt(category_key);
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
}
