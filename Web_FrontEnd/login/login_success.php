<?php
session_start();
//if(!session_is_registered(myusername)){
//header("location:main_login.php");
$user = $_SESSION['myusername'];
echo "welcome $user";
//}
?>


<html>
<body>
Đăng nhập thành công
</body>
</html>