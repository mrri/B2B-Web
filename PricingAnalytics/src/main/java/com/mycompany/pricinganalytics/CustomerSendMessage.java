/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.Customer;
import PricingAnalyticsObject.Message;
import PricingAnalyticsObject.Product;
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
public class CustomerSendMessage extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String customer_name = request.getParameter("customer_name");
        String customer_add = request.getParameter("customer_address");
        String customer_mail = request.getParameter("customer_mail");
        String customer_country = request.getParameter("customer_country");
        String customer_phone = request.getParameter("customer_phone");
        String customer_message = request.getParameter("customer_message");
        HttpSession session = request.getSession(true);
        String item = (String)session.getAttribute("product_id");
        int product_id = 0;
        if(item != null)
            product_id = Integer.parseInt(item);
        Customer customer = new Customer(customer_name, customer_mail, customer_add, customer_country ,customer_phone);
        EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
        EntityManager entityManager = entityFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(customer);
        entityManager.getTransaction().commit();
        
        Query cus_query = entityManager.createQuery("SELECT E FROM Customer E WHERE E.customer_phone= :phone");
        cus_query.setParameter("phone", customer_phone);
        Customer cus = (Customer) cus_query.getResultList().get(cus_query.getResultList().size()-1);
        Query query = entityManager.createQuery("SELECT E FROM Product E WHERE E.product_id= :product_id");
        query.setParameter("product_id", product_id);
        Product result = (Product) query.getSingleResult();
        
        Message ms = new Message(result.getUser_id(), product_id, cus.getCustomer_id(), customer_message);
        entityManager.getTransaction().begin();
        entityManager.persist(ms);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
