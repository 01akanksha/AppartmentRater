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
        <table>
            <tr>
                <td><h1>Select the Area from the drop down to search for the apartments</h1></td>
                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>  
                <td style="text-align: right" ><a href="login.jsp">logout</a>    </td>
        </tr>
        </table>
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
<td>No of Beds</td>
<td><select type="text" name="Beds"/>
<option selected value="SELECT">SELECT</option>
<c:forEach var="item1" items="${beds}">
                                <option>${item1}</option>
                            </c:forEach>
</td>

</tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>

<tr>
    <td ><input type="submit" value="Search" name="Search"></td>
</tr>
<tr>
    <td>To Compare:</td>
</tr>
<tr>
    <td><input type="submit" value="Compare" name="Compare"/></td>
                </tr>
</table>
</form>
        
    </body>
</html>
