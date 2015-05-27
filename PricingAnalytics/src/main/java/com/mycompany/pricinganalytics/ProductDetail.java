/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.Product;
import PricingAnalyticsObject.UserInfo;
import com.sun.corba.se.spi.presentation.rmi.StubAdapter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Quoc Huy Ngo
 */
public class ProductDetail extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("item");
        int product_id = 0;
        if(id != null)
            product_id = Integer.parseInt(id);
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        Product product = null;
        try
        {   
            product = entityManager.find(Product.class, product_id);
        }
        catch(NoResultException e){
            response.getWriter().println("Khong tim thay san pham");
        }
        if(product != null){
            Query query_suplier = entityManager.createQuery("SELECT E FROM UserInfo E WHERE E.user_id= :id");
            query_suplier.setParameter("id", product.getUser_id());
            UserInfo supplier = (UserInfo) query_suplier.getSingleResult();
            request.setAttribute("error", 0);
            request.setAttribute("product", product);
            request.setAttribute("supplier", supplier);
            //response.getWriter().println("Company name: " + result[0] + " Phone: " + result[1]);
            }
            //response.getWriter().println(product.getProduct_name() + "    " + product.getPrice());
        else{
            request.setAttribute("error", 1);
        }
    }

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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
