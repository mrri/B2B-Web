<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="style.css">
<title>B2b</title>
</head>

<body>
	
    <!------------------------ Header ---------------------->
     <%@include file="header.jsp" %>
     <%-- <%
         if(user_name == null || user_name=="1")
         {
            response.sendRedirect("index.jsp");
         }
    %>--%>
     <!-- Body -->
     <div id="wrapper">
         <div id="user_cp">
             <!--<table>
                 <td>
                 <th>
                     Bảng điều khiển
                 </th>
                 </td>
                <td>
                     <a href="addnewproduct.jsp">Thêm sản phẩm</a></br>
                     Hồ sơ công ty</br>
                     Quản lý sản phầm</br>
                     Quản lý tài khoản</br>
                     Đăng xuất</br>
                 </td>
                 
             </table>-->
             
             <table >
		<!--Control Panel-->
		<tr><td bgcolor="#CC0000" height="25" class="trang"  style="padding-left:5px;"><b>CONTROL PANEL</b></td></tr>
		<tr><td>
                    <table cellpadding="0" cellspacing="0" width="100%" border="0" style="border:1px solid #CCCCCC; padding:5px;" class="xanh">
                        <tr><td><img src="images/b1.gif"/> <a href="addnewproduct.jsp">Thêm sản phẩm mới</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="product_list.php">Quản lý sản phẩm</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="offer_add.php">Thêm tin mua bán</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="company_edit.php">Thông tin công ty</a></td></tr>
                        
                        <tr><td><img src="images/b1.gif"/> <a href="offer_list.php">Quản lý tin mua bán</a></td></tr>					
                        <tr><td><img src="images/b1.gif"/> <a href="changepass.php">Đổi password</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="member.php">Thông tin tài khoản</a></td></tr>
                        <tr><td><img src="images/b1.gif"/> <a href="logout.jsp">Đăng xuất</a></td></tr>
                    </table>					
		</td></tr>
	</table>
         </div>
         
         <div id="aa">
         </div>
             
     </div>
     

      <!------------------------ footer ---------------------->
     <%@include file="footer.jsp" %>
	</body>
</html>
