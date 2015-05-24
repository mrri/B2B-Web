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
            
            <h4>Thêm sản phẩm</h4>
            <div id="addnewproduct">
                <form name="register"  action='addnewproduct' method='post'>
                    Danh mục sản phẩm
                     <%@include file="category.jsp" %>
                    <table  CELLSPACING="1" WIDTH="500px">
                        
                        <TR>
                            <TD WIDTH="33%">Tên sản phẩm</TD>
                            <TD WIDTH="67%"><input type="text" name="user_name"><br></TD>
                        </TR>
                        <TR>
                            <TD WIDTH="33%">Thông tin sản phẩm</TD>
                            <TD WIDTH="67%"> <%@include file="tinymce.html" %><br> </TD>
                        </TR>
                        
                        
                        
                        <TR>
                            <center>
                                <TD><input type="submit" value="Gửi" name="submitregister" ><br> </TD>
                            </center>
                        </TR>

                    </table>
                </form>
            </div>
		
    <!-----------------------------------Register Close------------------------------------------>
            
            
		


			
			
			
            
			
	</div>
      <!------------------------ footer ---------------------->
     <%@include file="footer.jsp" %>
	</body>
</html>
