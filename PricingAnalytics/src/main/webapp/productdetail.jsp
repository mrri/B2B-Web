<%-- 
    Document   : product_detail
    Created on : May 26, 2015, 10:28:58 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <c:import url="/product_detail" />
    </head>
    <body>
        
        <%@include file="header.jsp" %>
       
        <div id="wrapper">
            
           
         
            <div>
            <div id="product_images">
                
                <img src="http://www.acevn.com/mydata/photo_large/tuananh20150526130116350.jpg" width="400" height="300">
            </div>
            <div id="product_detail0">
                
                <table style="margin: 5px 5px;">
                    <%
                    String item = request.getParameter("item");  
                            session.setAttribute("product_id", item);
                            %>
                    <tr>
                        <td>Tên sản phẩm</td>
                        <td>:</td>                                        
                        <td>${product.product_name}</td>
                    </tr>
                    <tr>
                        <td>Giá</td>
                        <td>:</td>
                        <td>${product.price}</td>
                    </tr>
                    <tr>
                        <td>Số lượng</td>
                        <td>:</td>
                       <td>${product.quantity}</td>
                    </tr>
                    <tr>
                        <td>Nhà cung cấp</td>
                        <td>:</td>
                        <td>${supplier.company_name}</td>
                    </tr>
                    <tr>
                        <td>Điện thoại</td>
                        <td>:</td>
                        <td>${supplier.phone}</td>
                    </tr>
                </table>
            </div>
            <div id="product_contact">
                <form name="message" method="post" action="message" onsubmit="return checkinput();">
                <table style="margin: 5px 5px;">
                        
                        <TR>
                            <TD WIDTH="200">Họ tên*</TD>
                            <TD WIDTH="150"><input type="text" name="customer_name"><br></TD>
                        </TR>
                   <!--     <TR>
                            <TD>Công ty</TD>
                            <TD><input type="text" name="contact_company"><br> </TD>
                        </TR>-->
                        <TR>
                            <TD>Địa chỉ</TD>
                            <TD><input type="text" name="customer_address"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Điện thoại*</TD>
                            <TD><input type="text" name="customer_phone"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Mail</TD>
                            <TD><input type="text" name="customer_mail"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Quốc gia</TD>
                            <TD><input type="text" name="customer_country"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Nội dung*</TD>
                            <TD ><textarea rows="4" cols="40" name="customer_message">
                               </textarea><br> 
                            </TD>
                            
                        </TR>
                        <TR>
                            <TD></TD>
                            <TD align="center"><input type="submit" value="Gửi"></TD>
                            
                        </TR>
                    </table>
                </form>
            </div>
        </div>
            
            <div id="product_detail">
                ${product.description}
            </div>
            
            <div id="product_similar">
                
            </div>
            
        </div>
              
        
        <%@include file="footer.jsp" %>
    </body>
</html>
