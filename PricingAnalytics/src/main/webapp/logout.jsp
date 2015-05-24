<%-- 
    Document   : logout
    Created on : May 22, 2015, 7:48:45 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
    </head>
    <body>
       <%
 
     String username=(String)session.getAttribute("user_name");
    if(username!=null)
        {
           out.println(username+" loged out, <a href=\"index.jsp\">Back</a>");
            session.removeAttribute("user_name");
             
        }
     else 
         {
         out.println("You are already not login <a href=\"index.jsp\">Back</a>");
     }
 
 
 
%>  
<meta http-equiv="refresh" content="2; url=index.jsp" />
    </body>
</html>
