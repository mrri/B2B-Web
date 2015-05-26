<%-- 
    Document   : Manage_product
    Created on : May 25, 2015, 12:00:00 PM
    Author     : lo.zert
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <c:import url="/product" />
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id = "wrapper">
            <%@include file="cp_user.jsp" %>
            
            <div id="manager_product">
                <table style="width:100%">
                    <tr>
                        <th>STT</th>
                        <th>Tên sản phẩm</th>
                        <th>Ngày gửi</th>
                        <th>Chức năng</th>
                    </tr>
                    <c:forEach items="${requestScope.productList}" var="Product" varStatus="counter">
                        <tr>
                            <td>${counter.count}</td>
                            <td>${Product.product_name}</td>
                            <td></td>
                            <td>Làm mới || Chỉnh sửa || Xóa</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            
            
            
            
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
