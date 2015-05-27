<%-- 
    Document   : loginbox
    Created on : May 26, 2015, 11:42:14 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script language="JavaScript">
    function checkinput(){
        user_name=document.login.user_name;
        password=document.login.password;
       
        if(user_name.value==""){
            alert("Hãy chọn tên đăng nhập");
            user_name.focus();
            return false;
        }
        if(password.value==""){
            alert("Chưa nhập mật khẩu");
            password.focus();
            return false;
        }
        return true;
    }
</script>
        
    </head>
    <body>
       <div id="loginpage">		
			  <!--------------------Login open ---------------->
	<table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
            <form name="login" method="post" action="login" onsubmit="return checkinput();">
                <td>
                     
                    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
                        <tr>
                            <td colspan="3"><strong>Member Login </strong></td>
                            <%
                                 if(user_name=="1")
                                 {
                                     %> <p>Tài khoản hoặc mật khẩu không chính xác</p> <%
                                 }
                            %>
                        </tr>
                        <tr>
                            <td width="78">Username</td>
                            <td width="6">:</td>
                            <td width="294"><input name="user_name" type="text" id="username"></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>:</td>
                            <td><input name="password" type="password" id="password"></td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td></td>
                            <td><input type="submit" name="Submit" value="Login"></td>
                        </tr>
                    </table>
                </td>
            </form>
		
	</table>		
        </div>
        
    </body>
</html>
