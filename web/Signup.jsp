<%-- 
    Document   : Signup
    Created on : Jul 31, 2016, 3:37:56 PM
    Author     : A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please enter below details to Sign up</h1>
        <form action="SignupServlet" method="post">
<table>
<tr>
<td>User name :</td>
<td><input type="text" name="id"/></td>
</tr>
<tr>
<td>Password :</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td>Confirm Password :</td>
<td><input type="password" name="Confirmpassword"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Sign UP"></td>
</tr>
</table>
</form>
    </body>
</html>
