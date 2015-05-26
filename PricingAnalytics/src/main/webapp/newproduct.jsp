<%-- 
    Document   : newproduct
    Created on : May 26, 2015, 9:40:07 AM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <c:import url="/product" />
    </head>
    <body>
        <div id="newproduct">
            Sản phẩm mới
            <table>
                <tr>
                    <c:forEach items="${requestScope.productList}" var="Product"  end="5">
                        
                        <td><img src="http://the-gadgeteer.com/wp-content/uploads/2015/02/dell-xps13-150x150.jpg"></td>
                    </c:forEach>
                </tr>
                <tr id="images">
                    <c:forEach items="${requestScope.productList}" var="Product"  end="5">
                        <td><center>${Product.product_name}</center></td>
                    </c:forEach>
                </tr>
            </table>
            <!--Table 2-->
             <table>
                <tr>
                    <c:forEach items="${requestScope.productList}" var="Product"  begin ="5" end="10">
                        
                        <td><img src="http://the-gadgeteer.com/wp-content/uploads/2015/02/dell-xps13-150x150.jpg"></td>
                    </c:forEach>
                </tr>
                <tr id="images">
                    <c:forEach items="${requestScope.productList}" var="Product" begin ="5" end="10">
                        <td><center>${Product.product_name}</center></td>
                    </c:forEach>
                </tr>
            </table>
            
            
            
        </div>
             
    </body>
</html>
