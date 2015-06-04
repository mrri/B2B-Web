/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.Category;
import PricingAnalyticsObject.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
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
public class Analytics extends HttpServlet {
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        List<Product> listProduct  = null;//new ArrayList<Product>();
        List<Category> total = new ArrayList<Category>();
 
        Query query_poduct = entityManager.createQuery("SELECT E FROM Product E");
        try{
            listProduct = query_poduct.getResultList();
            Collections.reverse(listProduct);
        }
        catch(NoResultException e){
            
        }
        if(listProduct == null){
            
        }
        else{
            int count_dienmay = 0;
            int count_dientu=0;
            int count_giadung = 0;
            int count_kythuatso = 0;
            for(int i = 0; i < listProduct.size(); i++)
            {
                Product product = listProduct.get(i);
                if(product.getProduct_category() >= 1 && product.getProduct_category() <= 4){
                    count_dienmay += 1;
                }
                else if(product.getProduct_category() >= 100 && product.getProduct_category() <= 102){
                    count_dientu += 1;
                }
                else if(product.getProduct_category() >= 200 && product.getProduct_category() <= 203){
                    count_giadung += 1;
                }
                else
                    count_kythuatso += 1;  
            }
            total.add(new Category("Điện Máy",count_dienmay));
            total.add(new Category("Điện Tử",count_dientu));
            total.add(new Category("Gia Dụng",count_giadung));
            total.add(new Category("Kỹ Thuật Số",count_kythuatso));
            request.setAttribute("analyticsTotal", total);
          //  request.getRequestDispatcher("/newproduct.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
