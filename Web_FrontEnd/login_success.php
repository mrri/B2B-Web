<?php
session_start();
//if(!session_is_registered(myusername)){
//header("location:main_login.php");
$user = $_SESSION['username'];
echo "welcome $user";
//}
?>


<html>
<head>
<meta http-equiv="refresh" content="2; url=index.php" />
</head>
<body>
Đăng nhập thành công, sẽ chuyển về trang chủ sau 2s
</body>
</html>