<?php

 
session_start();
$_SESSION['name'] = "Tuan Anh";
// Khởi tạo session name có giá trị là: PHP
 

?>
<html>
<head>
<title>Test page 1</title></head>
<body>
<b><a href=session2.php>Click here</a></b>
</body>
</html>