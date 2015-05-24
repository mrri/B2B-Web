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
                                          
                                            <c:if test="${sessionScope['user_name']!=null}">
                                                <b>Xin chào bạn :</b> <h3><font color="red">${sessionScope['user_name']}</font></h3>
                                            </c:if>
                                            <c:if test="${sessionScope['user_name']==null}">
                                                 <a href='login.jsp'>Đăng nhập</a>
                                            </c:if>
                                            
                                    </div>
                                    <div id="account_box2">
                                        
                                            <c:if test="${sessionScope['user_name']!=null}">
                                                <a href="logoutprocess">Logout</a>
                                            </c:if>
                                            <c:if test="${sessionScope['user_name']==null}">
                                                 <a href='register.jsp'>Đăng ký</a>
                                            </c:if>
                                    </div>                                    
				</div>
                 </div>
            </div>
	</div>
    </body>
</html>
