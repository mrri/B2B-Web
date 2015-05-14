package com.mycompany.testhibernatejpa;
 
import java.io.IOException;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.EntityManager;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class UserControllerServlet extends HttpServlet {
     
    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
 
        String userName = request.getParameter("userName");
        String password = request.getParameter("password1");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
 
//         response.getWriter().println("<html>");
//           response.getWriter().println("<head>");
//           response.getWriter().println("<head>");
//           response.getWriter().println("<body>");
//            response.getWriter().println("your name is : "+userName);
//            response.getWriter().println("your email is : "+email);
//            response.getWriter().println("your email is : "+password);
//            response.getWriter().println("your email is : "+phone);
//            response.getWriter().println("your email is : "+city);
//           response.getWriter().println("<body>");
//           response.getWriter().println("</html>");
           
           
           
//        HttpSession session = request.getSession(true);
//        try {
//            UserDAO userDAO = new UserDAO();
//            userDAO.addUserDetails(userName, password, email, phone, city);
//            response.sendRedirect("Success");
//        } catch (Exception e) {
// 
//            e.printStackTrace();
//        }
// 
         UserInfo user = new UserInfo(userName,password, email, city, phone );
         EntityManagerFactory entityFactory = Persistence.createEntityManagerFactory("hibernate"); //(EntityManagerFactory) getServletContext().getAttribute("hibernate");
         EntityManager em = entityFactory.createEntityManager();
         em.getTransaction().begin();
         em.persist(user);
         em.getTransaction().commit();
         em.close();

        //Save the employee in database
        
 
        //Commit the transaction
       
        
    }
}
