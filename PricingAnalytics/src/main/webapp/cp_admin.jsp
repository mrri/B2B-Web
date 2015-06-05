<%-- 
    Document   : cp_admin
    Created on : May 25, 2015, 3:06:08 PM
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
        <div id="cp_admin">
             <table >
		<!--Control Panel-->
		<tr><td bgcolor="#CC0000"><b>CONTROL PANEL</b></td></tr>
		<tr><td>
                    <table  style="border:1px solid #CCCCCC; padding:5px; width: 200px;">
                        <tr><td><img src="images/b1.gif"/> <a href="ad_accountmanager.jsp">Quản lý tài khoản</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="ad_managerproduct.jsp">Quản lý sản phẩm</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="ad_analytics.jsp">Phân tích</a></td></tr>
                        
				
                        <tr><td><img src="images/b1.gif"/> <a href="changepassword.jsp">Đổi mật khẩu</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="member.php">Thông tin tài khoản</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="logout.jsp">Đăng xuất</a></td></tr>
                    </table>					
		</td></tr>
            </table>
         </div>
    </body>
</html>
