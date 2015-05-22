<%-- 
    Document   : checklogin
    Created on : May 22, 2015, 8:00:18 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- check login, nếu bỏ trống username hoặc password sẽ báo lỗi-->
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username == null || password == null) {
 
                out.print("Không được bỏ trống ");
            }
 
            // Here you put the check on the username and password
        %>
    </body>
</html>
