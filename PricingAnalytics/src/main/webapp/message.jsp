<%-- 
    Document   : message
    Created on : Jun 1, 2015, 8:33:24 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <c:import url="/message_manager" />
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="wrapper">
            <%@include file="cp_user.jsp" %>
       
        
        <div id="message">
            <table border="1">
                <tr>
                <c:forEach items="${requestScope.message}" var="Message" >
                        <td>Tin nhắn: ${Message.message_content}</td>
                </c:forEach>
                </tr>
                <tr>
                 <c:forEach items="${requestScope.customer}" var="Customer">  
                     <td>name: ${Customer.customer_name}</td>
                       
                </c:forEach>       
                </tr>
            </table>
            
        </div>
        
       
        
        <%@include file="footer.jsp" %>
        
        
         </div>
    </body>
</html>
