<%-- 
    Document   : DropDown
    Created on : Jul 31, 2016, 8:33:03 PM
    Author     : A
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Select the Area from the drop down to search for the apartments</h1>
        <form action="AreaApartmentServlet" method="post">
<table>
<tr>
<td>Location:</td>
<td><select type="text" name="Location"/>
<option selected value="SELECT">SELECT</option>
<c:forEach var="item" items="${locations}">
                                <option>${item}</option>
                            </c:forEach>
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Search"></td>
</tr>
</table>
</form>
    </body>
</html>
