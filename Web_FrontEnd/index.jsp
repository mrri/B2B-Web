<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="style.css">
<title>B2b</title>
</head>

<body>
	
    <!------------------------ Header ---------------------->
    
    <div id="header">
		<div id="headercontain">
			<!-- Logo -->
			<div id="logo">
				<a href="index.php"><img src="images/logo.png" /></a>
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
						<li>Thành Viên</li>
						<li>Thành Viên</li>
					</ul>
				</div>
					<!--Khung Account-->
				<div id="account">
                	
					<div id="login">
						<?php 
						session_start();
						if ( empty($_SESSION['username']))
							{ 
								echo "<a href='login.php'>Đăng Nhập</a>";
							}
						else
							{
								$username = $_SESSION['username'];
								echo "<a href='admin.php'>$username</a>";
							} 
						?>
					</div>
					<div id="register">
						<?php
						if ( empty($_SESSION['username']))
							{ 
								echo "<a href='register.php'>Đăng Ký</a>";
							}
						else
							{
								echo "<a href='logout.php'>Đăng Xuất</a>";
							} 
					?>
					</div>
				</div>
            </div>
		</div>
	</div>
    
    
    
    
     
      <!------------------------ Body ---------------------->
     
     

	<div id = "wrapper">
			
		<div id="slider">
			Slider 
		</div>
		<div id="slider1">
			Danh Mục 1
		</div>
		<div id="slider2">
			Danh Mục 1
		</div>
		<div id="slider3">
			Danh Mục 1
		</div>
			


			
			
			
            
			
	</div>
      <!------------------------ footer ---------------------->
    <div id="footer">
            <div id="footcontain">
				<div id="foot1">
               		 <p>ABOUT</p>
				</div>
                
                <div id="foot2">
               		 <p> 
						<strong>GIÚP ĐỠ VÀ HỖ TRỢ</strong> <br/><br/>
						Câu hỏi thường gặp<br/>
						Hướng dẫn sử dụng<br/>
					 </p>
				</div>
                
                <div id="foot3">
                
               		<strong>LIÊN HỆ</strong> <br/><br/>
					MSC Industrial Supply<br />
					75 Maxess Road<br />
					Melville, NY 11747-3151<br />
					Contact Us | 1-800-645-7270 | Chat<br />
					All MSC Locations<br />
	
				</div>
                
                <div id= "foot4">
              		  © 2000 - 2015 MSC Industrial Direct Co., Inc. All Rights Reserved
              </div>
			</div>
       </div>
	</body>
</html>
