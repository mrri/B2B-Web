<%-- 
    Document   : register
    Created on : May 8, 2015, 6:49:52 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
</head>
<body>
    <h1>Registration Form</h1>
    <form action="register" method="post">
        <table cellpadding="3pt">
            <tr>
                <td>User Name :</td>
                <td><input type="text" name="userName" size="30" /></td>
            </tr>
            <tr>
                <td>Password :</td>
                <td><input type="password" name="password1" size="30" /></td>
            </tr>
 
            <tr>
                <td>Confirm Password :</td>
                <td><input type="password" name="password2" size="30" /></td>
            </tr>
            <tr>
                <td>email :</td>
                <td><input type="text" name="email" size="30" /></td>
            </tr>
            <tr>
                <td>Phone :</td>
                <td><input type="text" name="phone" size="30" /></td>
            </tr>
            <tr>
                <td>City :</td>
                <td><input type="text" name="city" size="30" /></td>
            </tr>
        </table>
        <p />
        <input type="submit" value="Register" />
    </form>
</body>
</html>

