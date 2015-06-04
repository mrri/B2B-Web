<%-- 
    Document   : allproduct
    Created on : Jun 2, 2015, 10:46:20 PM
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
        <%@include file="header.jsp" %>
        <div id="wrapper">
             <form name="register" method="post" action="register" onsubmit="return checkinput();">
            <table>
                <tr>
                    <td>Tài Khoản</td>
                     <td></td>
                      <TD><input type="text" name="company"><br> </TD>
                </tr>
                <tr>
                    <td>Mật khẩu cũ*</td>
                     <td></td>
                      <TD><input type="text" name="company"><br> </TD>
                </tr>
                <tr>
                    <td>Mật khẩu mới*</td>
                     <td></td>
                     <TD><input type="text" name="company"><br> </TD>
                </tr>
                <tr>
                    <td>Mật khẩu mới</td>
                     <td></td>
                     <TD><input type="text" name="company"><br> </TD>
                </tr>
                <tr>
                     <TD  colspan="2" align="center"><input type="submit" value="Cập nhật"></TD>
                </tr>
            </table>
             </form>
        </div>
         <%@include file="footer.jsp" %>
    </body>
</html>
