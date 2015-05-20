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
$username=$_POST['username'];
$password=$_POST['password'];
 
//Xử lý để tránh MySQL injection
$username = stripslashes($username);
$password = stripslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);
 
$sql="SELECT * FROM $tbl_name WHERE username='$username' and password='$password'";
$result=mysql_query($sql);
$count=mysql_num_rows($result);
// found 1 user mean login success
if($count==1){
 
//direct to login_success
session_start();
$_SESSION['username'] = $username;
$_SESSION['password'];
header("location:login_success.php");
}
else {
echo "Sai tên đăng nhập hoặc mật khẩu";
}
?>