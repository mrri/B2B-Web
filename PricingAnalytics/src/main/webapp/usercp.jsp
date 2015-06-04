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
     <%
         if(user_name == null || user_name=="1")
         {
            response.sendRedirect("index.jsp");
         }
    %>
     <!-- Body -->
     <div id="wrapper">
        
         <%
         
         if(user_name.contentEquals("tuananh"))
         {
              %><%@include file="cp_admin.jsp"%><% 
         }
         else
         {
             %><%@include file="cp_user.jsp"%><% 
         }
         
         %>
         
         <%@include file="account_info.jsp"%>
       
       
         
         
             
     </div>
     

      <!------------------------ footer ---------------------->
     <%@include file="footer.jsp" %>
	</body>
</html>
