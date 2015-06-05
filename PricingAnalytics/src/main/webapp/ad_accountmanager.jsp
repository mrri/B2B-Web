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
         <c:import url="/company" />
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="wrapper">
            <%@include file="cp_admin.jsp" %>
            <div id="ad_accountmanager">
            <table border="1">
           <c:forEach items="${requestScope.suplier}" var="UserInfo">
                    <tr>
                         <td>${UserInfo.user_name}</td>
                         <td>Xóa Tài khoản || Khóa Tài Khoản </td>
                    </tr>
                </c:forEach>
            </table>
            </div>
        </div>
         <%@include file="footer.jsp" %>
    </body>
</html>
