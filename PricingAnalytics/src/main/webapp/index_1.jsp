<%-- 
    Document   : header
    Created on : May 21, 2015, 3:28:11 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    
    <!-- popup login-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.pack.js"></script>
<script>
$(document).ready(function() {
    $(".popup").hide();
 
    $("#button1").click(function(e) {
        openPopup();
    });
 
    $(".close").click(function (e) {
        closePopup();
        e.preventDefault();
    });
 
    $("#background").click(function () {
        closePopup();
    });
 
});
 
function openPopup(){
    var dheight = document.body.clientHeight;
    var dwidth = document.body.clientWidth;
 
    $("#background").width(dwidth).height(dheight);
 
    $("#background").fadeTo("slow",0.8);
 
    var $popup1=$("#popup1");
    $popup1.css("top", (dheight-$popup1.height())/2);
    $popup1.css("left",(dwidth-$popup1.width())/2);
 
    $popup1.fadeIn();
}
function closePopup(){
    $("#background").fadeOut();
    $(".popup").hide();
}
</script>
<style>
.popup{
    position: absolute;
    background: white;
    border: 1px solid gray;
    z-index: 10000;
    box-shadow: 3px 3px gray;
}
#background{
    position: absolute;
    background: gray;
    left: 0px;
    top: 0px;
}
a.close{
    text-decoration: none;
    float: right;
}
</style>
    
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
                            <li class="danhmuc">Danh mục sản phẩm</li>
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
                            <!--Khung Account-->
                    <div id="account_box">
                        <div id="account_box1">
                            <%
                                String user_name =  (String)session.getAttribute("user_name"); 
                              String user_id = (String) session.getAttribute("user_id");
                                if(user_name=="1"){
                                    session.setAttribute("user_name",null);
                                }
                                if(user_name!=null && user_name!="1")
                                {
                                     %><b><a href='usercp.jsp'>${sessionScope['user_name']}</a></b><%
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
                                        %><b><a href="logout.jsp">Đăng xuất</a></b><%
                                    }
                                  else
                                    {
                                       %> <b><a href='register.jsp'>Đăng ký</a></b><%
                                    }
                                %>
                        </div>                                    
                    </div>
                        
                        
                        <!--popup login-->
                        <b id="button1">Đăng nhap</b>
                       
 
<!-- POPUP CONTENT -->
<div id="popup1" class="popup" style="width:300px;height:200px;">
<div style="background:lavender;">Title<a href="#" class="close"/>x</a></div>
<div align="center" style="margin-top:20px">
	<%@include file="loginbox.jsp" %>
</div>
</div>
<!-- END POPUP CONTENT -->
</div>
 
<div id="background"></div>

<!--end popup login-->            

                        
        <!--Script hien thi danh mục -->
            <script type="text/javascript">
                $(document).ready(function(){
                    $(".danhmucsanpham").hide();
                    $('.danhmuc').click(function(){
                        $(".danhmucsanpham").slideToggle();
                    });
                });
            </script>   
                    
            <div class="danhmucsanpham" id="danhmucsanpham">
            <div id="danhmuc1">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul >
            </div>
            <div id="danhmuc2">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul>
            </div>
            <div id="danhmuc3">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul>
            </div>
            <div id="danhmuc4">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul>
            </div>
                
                
            </div>    
                    
                    
         </div>
                        
           
                        
                        
            </div>
	</div>
    </body>
</html>
