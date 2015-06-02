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
         String code = request.getParameter("edit_code");
        String item_id = request.getParameter("item");
        int edit_code = 0;
        int product_id = 0;
        if(code != null)
           edit_code = Integer.parseInt(code);
        if(item_id != null)
            product_id = Integer.parseInt(item_id);
        int user_id = 0;
        if(id != null)
           user_id = Integer.parseInt(id);
        if (user_id != 0) {
            if (edit_code == 0 && product_id == 0) {
                EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
                EntityManager entityManager = entityFactory.createEntityManager();
                List<Product> listProduct = null;//new ArrayList<Product>();
                Query query_poduct = entityManager.createQuery("SELECT E FROM Product E WHERE E.user_id = :id");
                query_poduct.setParameter("id", user_id);
                try {
                    listProduct = query_poduct.getResultList();
                } catch (NoResultException e) {

                }
                if (listProduct == null) {

                } else {
                    request.setAttribute("productList", listProduct);
                    //  request.getRequestDispatcher("/newproduct.jsp").forward(request, response);
                }
            } else {
                EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
                EntityManager entityManager = entityFactory.createEntityManager();
                Product product = entityManager.find(Product.class, product_id);
                //neu la san pham cua user do
                if (product.getUser_id() == user_id) {
                    if (edit_code == 1) {

                        entityManager.getTransaction().begin();
                        entityManager.remove(product);
                        entityManager.getTransaction().commit();
                        response.getWriter().println("Xoa thanh cong");
                    } else {

                    }

                }
            }
        }
        else{
            response.getWriter().println("Đăng nhập");
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
