<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>B2b</title>

    <script language="JavaScript">
        function checkinput(){
            user_name=document.register.user_name;
            password=document.register.password;
            comfirm_password=document.register.comfirm_password;
            full_name=document.register. full_name;
            email=document.register.email;
            phone=document.register.phone;
            terms=document.register.terms;
            reg1=/^[0-9A-Za-z]+[0-9A-Za-z_.]*@[\w\d.]+.\w{2,4}$/;
            testmail=reg1.test(email.value);
          
            if(user_name.value==""){
                alert("Hãy chọn tên đăng nhập");
                user_name.focus();
                return false;
            }
             if(user_name.value.length < 3){
                alert("Tài khoản tối thiểu 3 kí tự");
                user_name.focus();
                return false;
            }
            if(password.value==""){
                alert("Chưa nhập mật khẩu");
                password.focus();
                return false;
            }
            if(password.value.length < 8){
                alert("Mật khẩu quá ngắn");
                password.focus();
                return false;
            }
            if(comfirm_password.value==""||comfirm_password.value!==password.value){
                alert("Mật khẩu lần 2 chưa khớp");
                comfirm_password.focus();
                return false;
            }
            if(!testmail){
                alert("Địa chỉ email không hợp lệ");
                email.focus();
                return false;
            }
            if(full_name.value==""){
                alert("Hãy nhập vào họ tên của bạn");
                full_name.focus();
                return false;
            }

            if(isNaN(phone.value)){
                alert("Số điện thoại chưa chính xác");
                phone.focus();
                return false;
            }
            if (!terms.checked){
              alert("Bạn phải đồng ý điều khoản sử dụng");
                terms.focus();
              return false;
          }
            else alert('OK, đã nhập đúng dữ liệu');
            return true;
        }
    </script>
</head>

<body>
    <!------------------------ Header ---------------------->
      <%@include file="header.jsp" %>
       <%
         if(user_name != null && user_name !="1")
         {
            response.sendRedirect("index.jsp");
         }
    %>
     
      <!------------------------ Body ---------------------->
	<div id = "wrapper">
	<!-----------------------------------Register Open------------------------------------------>
        
        <h4> Đăng Ký Tài Khoản</h4>
          <div id="register">
               <form name="register" method="post" action="register" onsubmit="return checkinput();">
                    <table>
                        <TR>
                            <%
                                session.setAttribute("error_register", "0");
                                String error_register =  (String)session.getAttribute("error_register"); 
                               
                                if(error_register=="0")
                                 {
                                  %> <p>Đăng ký thành công</p> <%
                                 }
                                if(error_register=="1")
                                 {
                                     %> <p>Tài khoản đã đăng ký</p> <%
                                 }
                                 if(error_register=="2")
                                 {
                                     %> <p>Email đã đăng ký</p> <%
                                 }
                                 
                            %>
                        </TR>
                        <TR>
                            <TD WIDTH="200">Tài Khoản*</TD>
                            <TD WIDTH="150"><input type="text" name="user_name"><br></TD>
                        </TR>
                        <TR>
                            <TD>Mật Khẩu*</TD>
                            <TD><input type="password" name="password"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Xác Nhận Mật Khẩu*</TD>
                            <TD><input type="password" name="comfirm_password"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Email*</TD>
                            <TD><input type="text" name="email"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Họ Tên*</TD>
                            <TD ><input type="text" name="full_name"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Công ty</TD>
                            <TD><input type="text" name="company"><br> </TD>
                        </TR>
                        <TR>
                            <TD>Địa chỉ</TD>
                            <TD><input type="text" name="address"><br> </TD>
                        </TR>

                        <TR>
                            <TD>Quốc gia</TD>
                            <TD><input type="text" name="country"><br> </TD>
                        </TR>

                        <TR>
                            <TD>Điện thoại</TD>
                            <TD><input type="text" name="phone"><br> </TD>
                        </TR>
                        <TR>
                                <TD>Fax</TD>
                                <TD><input type="text" name="fax"><br> </TD>
                        </TR>
                        <TR>
                                <TD>Website</TD>
                                <TD><input type="text" name="website"><br> </TD>
                        </TR>

                        <TR>
                                <TD>Giới thiệu công ty</TD>
                                <TD><input type="text" name="company_description"><br> </TD>
                        </TR>
                        <TR>
                                
                            <td> 
                                <p><input type="checkbox" name="terms"> I accept the <u>Terms and Conditions</u></p>
                            </td>
                        </TR>
                        <TR>
                                 <TD align="center"><input type="submit" value="Đăng ký"></TD>
                        </TR>
                    </table>
               </form>
            </div>
		
    <!-----------------------------------Register Close------------------------------------------>	
	</div>
      
    <!------------------------ footer ---------------------->
    <%@include file="footer.jsp" %>
    <!-- end footer-->
	




</body>
</html>
