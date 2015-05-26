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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Quoc Huy Ngo
 */
public class ProductManager extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        String id = (String) session.getAttribute("user_id");
        int user_id = 0;
        if(id != null)
           user_id = Integer.parseInt(id);
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        List<Product> listProduct  = null;//new ArrayList<Product>();
        Query query_poduct = entityManager.createQuery("SELECT E FROM Product E WHERE E.user_id = :id");
        query_poduct.setParameter("id", user_id);
        try{
            listProduct = query_poduct.getResultList();
        }
        catch(NoResultException e){
            
        }
        if(listProduct == null){
            
        }
        else{
            request.setAttribute("productList", listProduct);
          //  request.getRequestDispatcher("/newproduct.jsp").forward(request, response);
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

}
