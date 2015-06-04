<%-- 
    Document   : allproduct
    Created on : Jun 2, 2015, 10:46:20 PM
    Author     : lo.zert
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:import url="/product" />
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="wrapper">
            <table style="margin-left: 10px; margin-right: 10px;">
                
                
                <c:forEach items="${requestScope.productList}" var="Product">
                    <tr>
                         <td><a href="productdetail.jsp?item=${Product.product_id}"><img src="http://the-gadgeteer.com/wp-content/uploads/2015/02/dell-xps13-150x150.jpg"></a></td>
                        <td><center><a href="productdetail.jsp?item=${Product.product_id}">${Product.product_name}</a></center></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
         <%@include file="footer.jsp" %>
    </body>
</html>
