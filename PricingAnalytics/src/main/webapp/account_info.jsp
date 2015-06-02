<%-- 
    Document   : account_info
    Created on : May 25, 2015, 5:19:07 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <div id="account_info">
             <table> 
                 <tr>
                     <th>Thông tin tài khoản</th> 
                 </tr>
                <TR>
                    <TD WIDTH="200">Tài Khoản*</TD>
                    <TD WIDTH="150"><input type="text" name="user_name"><br></TD>
                </TR>
                <TR>
                    <TD WIDTH="200">Mật Khẩu*</TD>
                    <TD WIDTH="67"><input type="password" name="password"><br> </TD>
                </TR>
                <TR>
                    <TD WIDTH="200">Xác Nhận Mật Khẩu*</TD>
                    <TD><input type="password" name="comfirm_password"><br> </TD>
                </TR>
                <TR>
                    <TD WIDTH="200">Email*</TD>
                    <TD WIDTH="67"><input type="text" name="email"><br> </TD>
                </TR>
                <TR>
                    <TD WIDTH="200">Họ Tên*</TD>
                    <TD WIDTH="67"><input type="text" name="full_name"><br> </TD>
                </TR>
                <TR>
                    <TD WIDTH="200">Công ty</TD>
                    <TD WIDTH="200"><input type="text" name="company"><br> </TD>
                </TR>
                <TR>
                    <TD WIDTH="200">Địa chỉ</TD>
                    <TD WIDTH="67"><input type="text" name="address"><br> </TD>
                </TR>

                <TR>
                    <TD WIDTH="200">Quốc gia</TD>
                    <TD WIDTH="67"><input type="text" name="country"><br> </TD>
                </TR>

                <TR>
                    <TD WIDTH="200">Điện thoại</TD>
                    <TD WIDTH="67"><input type="text" name="phone"><br> </TD>
                </TR>
                <TR>
                        <TD WIDTH="200">Fax</TD>
                        <TD WIDTH="67"><input type="text" name="fax"><br> </TD>
                </TR>
                <TR>
                        <TD WIDTH="200">Website</TD>
                        <TD WIDTH="67"><input type="text" name="website"><br> </TD>
                </TR>

                <TR>
                        <TD WIDTH="200" >Giới thiệu công ty</TD>
                        <TD WIDTH="67"><input type="text" name="company_description"><br> </TD>
                </TR>
                <TR>
                        <TD align="center"><input type="submit" value="Cập nhật"></TD>
                </TR>
            </table>
         </div>
    </body>
</html>
