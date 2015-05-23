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
        reg1=/^[0-9A-Za-z]+[0-9A-Za-z_]*@[\w\d.]+.\w{2,4}$/;
        testmail=reg1.test(email.value);
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
        else alert('OK, đã nhập đúng dữ liệu');
        return true;
    }
</script>
</head>

<body>
    <!------------------------ Header ---------------------->
      <%@include file="header.jsp" %>
     
      <!------------------------ Body ---------------------->
	<div id = "wrapper">
	<!-----------------------------------Register Open------------------------------------------>
        
        <h4> Đăng Ký Tài Khoản</h4>
          <div id="register">
               <form name="register" method="post" action="register" onsubmit="return checkinput();">
                    <table  CELLSPACING="1" WIDTH="500px">
                        <TR>
                            <TD WIDTH="52%">Tài Khoản*</TD>
                            <TD WIDTH="48%"><input type="text" name="user_name"><br></TD>
                        </TR>
                        <TR>
                            <TD WIDTH="52%">Mật Khẩu*</TD>
                            <TD WIDTH="48%"><input type="password" name="password"><br> </TD>
                        </TR>
                        <TR>
                            <TD WIDTH="52%">Xác Nhận Mật Khẩu*</TD>
                            <TD WIDTH="48%"><input type="password" name="comfirm_password"><br> </TD>
                        </TR>
                        <TR>
                            <TD WIDTH="52%">Email*</TD>
                            <TD WIDTH="48%"><input type="text" name="email"><br> </TD>
                        </TR>
                        <TR>
                            <TD WIDTH="52%">Họ Tên*</TD>
                            <TD WIDTH="48%"><input type="text" name="full_name"><br> </TD>
                        </TR>
                        <TR>
                            <TD WIDTH="52%">Công ty</TD>
                            <TD WIDTH="48%"><input type="text" name="company"><br> </TD>
                        </TR>
                        <TR>
                            <TD WIDTH="52%">Địa chỉ</TD>
                            <TD WIDTH="48%"><input type="text" name="address"><br> </TD>
                        </TR>

                        <TR>
                            <TD WIDTH="52%">Quốc gia</TD>
                            <TD WIDTH="48%"><input type="text" name="country"><br> </TD>
                        </TR>

                        <TR>
                            <TD WIDTH="52%">Điện thoại</TD>
                            <TD WIDTH="48%"><input type="text" name="phone"><br> </TD>
                        </TR>
                        <TR>
                                <TD WIDTH="52%">Fax</TD>
                                <TD WIDTH="48%"><input type="text" name="fax"><br> </TD>
                        </TR>
                        <TR>
                                <TD WIDTH="52%">Website</TD>
                                <TD WIDTH="48%"><input type="text" name="website"><br> </TD>
                        </TR>

                        <TR>
                                <TD WIDTH="52%" >Giới thiệu công ty</TD>
                                <TD WIDTH="48%"><input type="text" name="company_description"><br> </TD>
                        </TR>
                        <TR>
                                
                                <TD WIDTH="48%"><input type="checkbox" value="Tôi đồng ý" name="company_description"><br> </TD>
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
