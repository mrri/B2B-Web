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
        <c:import url="/product_manager" />
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id = "wrapper">
            <%@include file="cp_user.jsp" %>
            
            <div id="title_manager_product">
                <a href="addnewproduct.jsp"><strong>Thêm sản phẩm</strong></a>
            </div>
             
            <div id="manager_product">
                 
                <table style="width:100%" border="1">
                    <tr>
                        <th>STT</th>
                        <th>Tên sản phẩm</th>
                        <th>Ngày gửi</th>
                        <th>Chức năng</th>
                    </tr>
                    <c:forEach items="${requestScope.productList}" var="Product" varStatus="counter">
                        <tr>
                            <td>${counter.count}</td>
                            <td><a href="productdetail.jsp?item=${Product.product_id}">${Product.product_name}</a></td>
                            <td align="center">${Product.date}</td>
                            <td align="center">Làm mới || <a  href="manage_product.jsp?item=${Product.product_id}&edit_code=2">Chỉnh sửa</a> || <a  href="manage_product.jsp?item=${Product.product_id}&edit_code=1">Xóa</a></td>
                        </tr>
                    </c:forEach>
                </table>
                
               
            </div>
            
            
            
            
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
