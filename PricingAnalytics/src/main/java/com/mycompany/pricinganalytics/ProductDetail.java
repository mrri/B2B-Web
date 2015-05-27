/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.Product;
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
        String id = request.getParameter("product_id");
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
            Query query_suplier = entityManager.createQuery("SELECT E.company_name, E.phone FROM UserInfo E WHERE E.user_id= :id", Object[].class);
            query_suplier.setParameter("id", product.getUser_id());
            List<Object[]> results = query_suplier.getResultList();
            for(Object[] result:results ){
                response.getWriter().println("Company name: " + result[0] + " Phone: " + result[1]);
            }
            response.getWriter().println(product.getProduct_name() + "    " + product.getPrice());
        }
        else{
            response.getWriter().println("Khong tim thay san pham");
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
