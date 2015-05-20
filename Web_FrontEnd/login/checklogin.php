<?php
 
$host="localhost"; 
$username="root"; //mysql username
$password=""; // Mysql password
$db_name="b2btest"; //database name
$tbl_name="user"; //table name
 
// connect database
mysql_connect("$host", "$username", "$password")or die("Không thể kết nối");
mysql_select_db("$db_name")or die("cannot select DB");
 
// get username va password
$myusername=$_POST['myusername'];
$mypassword=$_POST['mypassword'];
 
//Xử lý để tránh MySQL injection
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
$myusername = mysql_real_escape_string($myusername);
$mypassword = mysql_real_escape_string($mypassword);
 
$sql="SELECT * FROM $tbl_name WHERE username='$myusername' and password='$mypassword'";
$result=mysql_query($sql);
$count=mysql_num_rows($result);
// found 1 user mean login success
if($count==1){
 
//direct to login_success
session_start();
$_SESSION['myusername'] = $myusername;
$_SESSION['mypassword'];
header("location:login_success.php");
}
else {
echo "Sai tên đăng nhập hoặc mật khẩu";
}
?>