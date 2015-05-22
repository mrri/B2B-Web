<%-- 
    Document   : checkregister
    Created on : May 22, 2015, 8:16:46 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
       <%
            String password = request.getParameter("password");
            String confirm_password = request.getParameter("comfirm_password");
            String user_name = request.getParameter("user_name");
            String email = request.getParameter("email");
           
            if (user_name == "") {
                out.print("Chưa nhập username");
                response.sendRedirect("register.jsp");
            }
            if (email == "") {
                out.print("Chưa nhập email");
            }
            if (password == "") {
                out.print("Chưa nhập mật khẩu");
            }
            if (password != confirm_password) {
                out.print("Xác nhận mật khẩu sai, vui lòng nhập lại");
            }
 
            // Here you put the check on the username and password
        %>
    </body>
</html>
