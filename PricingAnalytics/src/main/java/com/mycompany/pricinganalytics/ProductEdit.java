/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pricinganalytics;

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

public class ProductEdit extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String code = request.getParameter("edit_code");
        String item_id = request.getParameter("item");
        int edit_code = 0;
        int product_id = 0;
        if(code != null)
           edit_code = Integer.parseInt(code);
        if(item_id != null)
            product_id = Integer.parseInt(item_id);
        HttpSession session = request.getSession(true);
        String id_user = (String)session.getAttribute("user_id");
        int user_id = 0;
        if(id_user != null);
            user_id = Integer.parseInt(id_user);
        if(user_id != 0){
            EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate");
            EntityManager entityManager = entityFactory.createEntityManager();
            Product product = entityManager.find(Product.class, product_id);
            //neu la san pham cua user do
            if(product.getUser_id() == user_id){
                if(edit_code == 1){
                    
                    entityManager.getTransaction().begin();
                    entityManager.remove(product);
                    entityManager.getTransaction().commit();
                    response.getWriter().println("Xoa thanh cong");
                }
                else{
                    
                }
                    
            }
        }
        else{
            response.getWriter().println("Đăng nhập");
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
