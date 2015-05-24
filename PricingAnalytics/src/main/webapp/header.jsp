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
                            <li class="danhmuc">Danh mục sản phẩm</li>
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
                        
                        
                        
                        
                        <!--khung danh muc-->

            <script type="text/javascript">
                $(document).ready(function(){
                    $(".danhmucsanpham").hide();
                    $('.danhmuc').click(function(){
                        $(".danhmucsanpham").slideToggle();
                    });
                });
            </script>   
                    
            <div class="danhmucsanpham">
                <ul >
                        <li><span>Điện lạnh</span></li>
                        <li class="li_col1">- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                        <li class="li_col1">- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                        <li class="li_col1">- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                        <li class="li_col1">- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul>
                <ul >
                        <li><span>Điện tử</span></li>
                        <li class="li_col4">- <a href="http://www.sosanhgia.com/t5-tivi.html" title="Giá Tivi">Tivi</a></li>
                        <li class="li_col4">- <a href="http://www.sosanhgia.com/t13-amply.html" title="Giá Amply">Amply</a></li>
                        <li class="li_col4">- <a href="http://www.sosanhgia.com/t14-dan-am-thanh.html" title="Giá Dàn âm thanh">Dàn âm thanh</a></li>
                        <li class="li_col4">- <a href="http://www.sosanhgia.com/t15-dau-dvd-dau-karaoke.html" title="Giá Đầu DVD - Đầu Karaoke">Đầu DVD - Đầu Karaoke</a></li>
                        <li class="li_col4">- <a href="http://www.sosanhgia.com/t38-radio-cassette.html" title="Giá Radio - Cassette">Radio - Cassette</a></li>
                </ul>
                <ul>
                        <li><span>Gia dụng</span></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t37-may-xay-sinh-to.html" title="Giá Máy xay sinh tố">Máy xay sinh tố</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t40-lo-vi-song.html" title="Giá Lò vi sóng">Lò vi sóng</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t46-lo-nuong.html" title="Giá Lò nướng">Lò nướng</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t41-ban-ui-ban-la.html" title="Giá Bàn ủi">Bàn ủi / Bàn là</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t42-may-hut-bui.html" title="Giá Máy hút bụi">Máy hút bụi</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t43-noi-com-dien.html" title="Giá Nồi cơm điện">Nồi cơm điện</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t44-may-ep-trai-cay.html" title="Giá Máy ép trái cây">Máy ép trái cây</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t47-bep-ga.html" title="Giá Bếp ga nhà bếp">Bếp ga</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t48-bep-tu-hong-ngoai.html" title="Giá Bếp từ / hồng ngoại nhà bếp">Bếp từ / hồng ngoại</a></li>
                        <li class="li_col2">- <a href="http://www.sosanhgia.com/t45-binh-thuy-dien.html" title="Giá Bình thủy điện / Phích điện">Bình thủy điện</a></li>
                </ul>
                <ul >
                        <li><span>Thiết bị di động</span></li>
                        <li class="li_col4">- <a href="http://www.sosanhgia.com/t6-dien-thoai.html" title="Giá Điện thoại di động">Điện thoại di động</a></li>
                        <li class="li_col4">- <a href="http://www.sosanhgia.com/t39-may-tinh-bang.html" title="Giá Máy tính bảng">Máy tính bảng</a></li>
                </ul>
                <ul class="li_cont5 undefined" style="float: left; width: 130px; height: 200px;">
                        <li><span>Máy tính</span></li>
                        <li class="li_col5">- <a href="http://www.sosanhgia.com/t9-laptop.html" title="Giá Laptop">Laptop</a></li>
                        <li class="li_col5">- <a href="http://www.sosanhgia.com/t35-may-tinh-de-ban-(pc).html" title="Giá Máy tính để bàn">Máy tính để bàn (PC)</a></li>
                        <li class="li_col5">- <a href="http://www.sosanhgia.com/t36-man-hinh-may-tinh.html" title="Giá Màn hình máy tính">Màn hình máy tính</a></li>
                </ul>
                <ul>
                        <li><span>Kỹ thuật số</span></li>
                        <li class="li_col6">- <a href="http://www.sosanhgia.com/t11-may-anh.html" title="Giá Máy ảnh">Máy ảnh</a></li>
                        <li class="li_col6">- <a href="http://www.sosanhgia.com/t12-may-quay-phim.html" title="Giá Máy quay phim">Máy quay phim</a></li>
                        <li class="li_col6">- <a href="http://www.sosanhgia.com/t25-may-anh-chuyen-nghiep.html" title="Giá Máy ảnh chuyên nghiệp DSLR">Máy ảnh chuyên nghiệp</a></li>
                </ul>
                
            </div>    
                    
                    
                 </div>
                        
           
                        
                        
            </div>
	</div>
    </body>
</html>
