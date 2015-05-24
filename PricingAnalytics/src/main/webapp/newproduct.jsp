<%-- 
    Document   : newproduct
    Created on : May 24, 2015, 2:45:18 PM
    Author     : lo.zert
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <c:forEach items="${requestScope.productList}" var="product">
                <tr>${product.picture}</tr><br>
                <tr>${product.name}</tr>
            </c:forEach>
        </table>
    </body>
</html>
