<%-- 
    Document   : header
    Created on : May 21, 2015, 3:28:11 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="header">
		<div id="headercontain">
			<!-- Logo -->
			<div id="logo">
				<a href="index.jsp"><img src="images/logo.png" /></a>
			</div>
			<!--Khung Search-->
		<!--<div id="find">
			<form>
				<input type="text" name="tfind"  placeholder="Khung tìm kiếm" />
				<input type="submit" name="find" value="Search" />
			</form>
        </div> 
		-->
                <div id="search">
                        <script>
                                (function() {
                                var cx = '011043942123399578564:g1c8onrmk8q';
                                var gcse = document.createElement('script');
                                gcse.type = 'text/javascript';
                                gcse.async = true;
                                gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                                '//cse.google.com/cse.js?cx=' + cx;
                                var s = document.getElementsByTagName('script')[0];
                                s.parentNode.insertBefore(gcse, s);
                        })();
                        </script>
                        <gcse:search></gcse:search>
                </div>
		<!-- end search-->
		</div>
		<div id="menu">
            <div id="menucontain">
                    <!-- Dropdown mennu-->
                    <div id="dropmenu">
                        <ul>
                            <li><button class="danhmuc">Danh mục sản phẩm</button></li>
                            <li>Danh Mục
                                    <ul>
                                            <li>Điện Máy</li>
                                            <li>Điện Tử</li>
                                            <li>Gia Dụng</li>
                                            <li>Kĩ Thuật Số</li>
                                    </ul>
                            </li>
                            <li>Sản Phẩm</li>
                            <li>Portfolio
                                    <ul>
                                            <li>Web Design</li>
                                            <li>Web Development</li>
                                            <li>Illustrations</li>
                                    </ul>
                            </li>
                            <li>Nhà cung cấp</li>
                            <li>Quản lý</li>
                        </ul>
                    </div>
                    
                    <!--khung danh muc-->
                    
                         <div class="detailDiv">
                        This is example of Hide show div element using jquery
                        </div>

            
            <script type="text/javascript">
                $(document).ready(function(){
                    $(".detailDiv").hide();
                    $('.danhmuc').click(function(){
                        $(".detailDiv").slideToggle();
                    });
                });
            </script>   
                    
                    
                    
                    
                    
                    
                    
                    
                            <!--Khung Account-->
                    <div id="account_box">
                        <div id="account_box1">
                            <%
                                String user_name =  (String)session.getAttribute("user_name"); 
                                String user_id =  (String)session.getAttribute("user_id"); 
                                if(user_name=="1"){
                                    session.setAttribute("user_name",null);
                                }
                                if(user_name!=null && user_name!="1")
                                {
                                     %><b>${sessionScope['user_name']}</b><%
                                }
                                else
                                {
                                    %> <b><a href='login.jsp'>Đăng nhập</a></b><%
                                }
                            %>                  
                        </div>
                        <div id="account_box2">
                              <%
                                    if(user_name!=null && user_name!="1")
                                    {
                                        %><b><a href="logout.jsp">Logout</a></b><%
                                    }
                                  else
                                    {
                                       %> <b><a href='register.jsp'>Đăng ký</a></b><%
                                    }
                                %>
                        </div>                                    
                    </div>
                 </div>
                        
           
                        
                        
            </div>
	</div>
    </body>
</html>
