/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

import PricingAnalyticsObject.Customer;
import PricingAnalyticsObject.Message;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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
public class MessageManager extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        String id = (String) session.getAttribute("user_id");
        int user_id = 0;
        if(id != null)
           user_id = Integer.parseInt(id);
        if(user_id != 0){
            EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
            EntityManager entityManager = entityFactory.createEntityManager();
            Query query_message = entityManager.createQuery("SELECT E FROM Message E WHERE E.user_id= :user_id");
            query_message.setParameter("user_id", user_id);
            List<Message> message_result = query_message.getResultList();
            List<Customer> customer_result = new ArrayList<Customer>();
            for(int i = 0; i < message_result.size(); i++){
                Query query_customer = entityManager.createQuery("SELECT E FROM Customer E WHERE E.customer_id :customer_id");
                query_customer.setParameter("customer_id",message_result.get(i).getCustomer_id());
                customer_result.add((Customer) query_customer.getSingleResult());
            }
            /*Query query_customer = entityManager.createQuery("SELECT E FROM Message E WHERE E.user_id= :user_id");
            query_customer.setParameter("user_id", );
            List<Customer> customer_result = query_customer.getResultList();*/
            request.setAttribute("message", message_result);
            request.setAttribute("customer", customer_result);
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
