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
     
      <!------------------------ Body ---------------------->
     
     

	<div id = "wrapper">
		<!-----------------------------------Register Open------------------------------------------>
		<h4> Đăng Ký Tài Khoản</h4>
		
		<div id="register">
                    <form name="register"  action='register' method='post'>
			<table  CELLSPACING="1" WIDTH="500px">
				<TR>
					<TD WIDTH="52%">Tài Khoản*</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br></TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Mật Khẩu*</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Xác Nhận Mật Khẩu*</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Email*</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Họ Tên</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Ngày sinh</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Công ty</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Địa chỉ</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Điện thoại</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Fax</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>
				<TR>
					<TD WIDTH="52%">Website</TD>
					<TD WIDTH="48%"><input type="text" name="username"><br> </TD>
				</TR>

				<TR>
					<center>
					<TD><input type="submit" name="submitregister" ><br> </TD>
					</center>
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
