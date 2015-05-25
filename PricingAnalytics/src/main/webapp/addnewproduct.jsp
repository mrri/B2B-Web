<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="style.css">
            <script type="text/javascript" src="tinymce/tinymce.min.js"></script>
<script type="text/javascript">
tinymce.init({
    selector: "textarea"
 });
</script>
            
<script language="JavaScript">
    function checkregister(){
     
        tensanpham = document.addnewproduct.tensanpham;
        thongtinsanpham = document.addnewproduct.thongtinsanpham;
        gia = document.addnewproduct.gia;
          
        if(key==null){
            alert("Chưa chọn danh mục sản phẩm thật");
            tensanpham.focus();
            return false;
        }
      
        if(tensanpham.value==""){
            alert("Chưa chọn danh mục sản phẩm");
            tensanpham.focus();
            return false;
        }
        if(thongtinsanpham.value==""){
            alert("Chưa chọn danh mục sản phẩm");
            tensanpham.focus();
            return false;
        }
        if(gia.value==""){
            alert("Chưa chọn danh mục sản phẩm");
            gia.focus();
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
   <%-- <%
         if(user_name == null || user_name=="1")
         {
            response.sendRedirect("index.jsp");
         }
    %>
   --%>
      <!------------------------ Body ---------------------->
    
     

	<div id = "wrapper">
            <%@include file="cp_user.jsp"%>
            
            
            <div id="addnewproduct">
                <h4>Thêm sản phẩm</h4>
                <form name="addnewproduct"  action="test.jsp" method="post" onsubmit="return checkregister();">
                     <%@include file="category.jsp"%>
                     <table>
                        <TR>
                        <%
                            String key = request.getParameter("key");  
                            session.setAttribute("keyid", key);
                            if(key==null)
                            {
                                %>Chưa chọn danh mục sản phẩm </br><%
                            }
                        %>
                            
                            <TD WIDTH="33%">Tên sản phẩm</TD>
                            <TD WIDTH="67%"><input type="text" name="tensanpham"><br></TD>
                        </TR>
                        <TR>
                            Thông tin sản phẩm</br></br>
                            <form method="post" >
                                 <textarea name="thongtinsanpham"></textarea>
                            </form>
                        </TR>
                        <TR>
                            <TD WIDTH="33%">Giá</TD>
                            <TD WIDTH="67%"><input type="text" name="price"><br></TD>
                        </TR>
                        <TR>
                           <!-- <form action="FileUploadServlet" method="post"
                                 enctype="multipart/form-data">
                                   <label for="fileName">Select File: </label> <input id="fileName"
                                   type="file" name="fileName" size="30" /><br /> <input
                                   type="submit" value="Upload" />
                            </form>
                           -->
                           
                           <input type="file" name="picture"/>  
                       
                        
                         <TD align="center"><input type="submit" value="Gửi"></TD>
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
