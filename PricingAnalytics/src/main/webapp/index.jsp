<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="style.css">
<title>B2b</title>
<!-- jscrip slideshow -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
	<script>
		$(function() {

			$("#slideshow > div:gt(0)").hide();

			setInterval(function() {
			  $('#slideshow > div:first')
			    .fadeOut(1000)
			    .next()
			    .fadeIn(1000)
			    .end()
			    .appendTo('#slideshow');
			},  5000);

		});
	</script>
<!--end scrip-->


</head>

<body>
	
    <!------------------------ Header ---------------------->
     <%@include file="header.jsp" %>
      <!------------------------ Body ---------------------->
     
     

	<div id = "wrapper">		
            <div id="slideshow">
		<div>
                    <img src="images/slideshow/1.jpg" width="940px" height="240px">
                </div>
                <div>
                     <img src="images/slideshow/2.jpg" width="940px" height="240px">
                </div>
                <div>
                     <img src="images/slideshow/3.jpg" width="940px" height="240px">
                </div>
                <div>
                     <img src="images/slideshow/4.jpg" width="940px" height="240px">
                </div>
            </div>
            
   
        
            <br>
		<div id="slider2">
			Danh Mục 1
		</div>
		<div id="slider3">
			Danh Mục 1
		</div>
			


			
			
			
            
			
	</div>
      <!------------------------ footer ---------------------->
     <%@include file="footer.jsp" %>
	</body>
</html>
