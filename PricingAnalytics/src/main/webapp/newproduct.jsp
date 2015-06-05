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
            <div id="newproduct_title">
                <div id="newproduct_title1">
                    <Strong style="line-height: 25px;">Sản phẩm mới</Strong> <br>
                </div>
                <div id="newproduct_title2">
                    <Strong style="line-height: 25px;">| Danh mục :</Strong> 
                    <select>
                         <option value="volvo">Tất cả</option>
                         <option value="saab">Điện máy</option>
                         <option value="opel">Điện tử</option>
                         <option value="audi">Gia dụng</option>
                         <option value="audi">Kỹ thuật số</option>
                    </select>
                </div>
                
                <div id="newproduct_title3">
                    <a href="allproducts.jsp"> <Strong style="line-height: 25px;">| Tất cả sản phẩm</Strong></a>
                </div>
            </div>
            <table style="margin-left: 10px; margin-right: 10px; ma">
                <tr>
                    <c:forEach items="${requestScope.productList}" var="Product"  end="5">
                                     
                        <td><a href="productdetail.jsp?item=${Product.product_id}"><img src="images/noimage.png" width="150" height="150"></a></td>
                    </c:forEach>
                </tr>
                <tr id="images">
                    <c:forEach items="${requestScope.productList}" var="Product"  end="5">
                        <td><center><a href="productdetail.jsp?item=${Product.product_id}">${Product.product_name}</a></center></td>
                    </c:forEach>
                </tr>
            </table>
            <!--Table 2-->
             <table style="margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                <tr>
                    <c:forEach items="${requestScope.productList}" var="Product"  begin ="5" end="10">
                        
                        <td><a href="productdetail.jsp?item=${Product.product_id}"><img src="images/noimage.png" width="150" height="150"></a></td>
                    </c:forEach>
                </tr>
                <tr id="images">
                    <c:forEach items="${requestScope.productList}" var="Product" begin ="5" end="10">
                        <td><center><a href="productdetail.jsp?item=${Product.product_id}">${Product.product_name}</a></center></td>
                    </c:forEach>
                </tr>
            </table>
            
        </div>
             
    </body>
</html>
