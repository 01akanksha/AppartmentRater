<!--# Copyright (c) 2016 Akanksha and Smitha
# This code is available under the "MIT License".
# Please see the file LICENSE in this distribution
# for license terms -->
<%-- 
    Document   : CompareResult    
    Author     : A
    Design for Compare Display Result page
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="AreaApartmentServlet.Details"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <table>
            <tr>
                <td><h1>Comparision Results-</h1></td>                
                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>  
                <td style="text-align: right" ><a href="login.jsp">logout</a>    </td>
        </tr>
        </table>
        
        <%--<form action="DetailsServlet" method="post"> --%>
        <table >
    <tr>
        
    </tr>

    <%
        ArrayList<Details> dbooks=(ArrayList)request.getAttribute("DetailsList1");
        Iterator it=dbooks.iterator();
        while(it.hasNext())
        {
            Details d=(Details)it.next();
            //System.out.println(d.apartmentName);
     %>       
        <tr>
        <table>
            <tr>
                <td><h3><u><%=d.apartmentName%></u></h3></td>   <td>    </td><td>    </td><td>    </td>
            <td><a href="<%=request.getContextPath()%>/DetailsServlet?aptName=<%=d.apartmentName%>&bed=<%=d.bed%>&rent=<%=d.rent%>&contact=<%=d.contact%>">Book</a></td>            
            <!--<td><input type="button" value="Like" onclick="increase()" /></td><td><input type="text" id="Like" value="1"/></td>
            <td><input type="button" value="Dislike" onclick="decrease()" /></td><td><input type="text" id="Dislike" value="1"/></td>-->
            <td><a href="<%=request.getContextPath()%>/RatingServlet?aptName=<%=d.apartmentName%>&bed=<%=d.bed%>&rent=<%=d.rent%>&contact=<%=d.contact%>&id=<%=d.ID%>">Rate</a></td></td>
            </tr>
            <tr>
            <table border="0">
                <tr><td><b>cityStateOrCode:</b><%=d.cityStateOrCode%></td>
                <td><b>bath:</b><%=d.bath%></td>         
                <td><b>area:</b><%=d.area%></td>
                <td><b>patio:</b><%=d.patio%></td>
                <td><b>pool:</b><%=d.pool%></td>
                <td><b>rent:</b><%=d.rent%></td>               
                <td><b>gym:</b><%=d.gym%></td>
                <td><b>washerDryer:</b><%=d.washerDryer%></td>
                 </tr>
                <tr>
                <td><b>dishWasher:</b><%=d.dishWasher%></td>                               
                <td><b>review:</b><%=d.review%></td>                
                <td><b>garageParking:</b><%=d.garageParking%></td>                
                <td><b>catRent:</b><%=d.catRent%></td>                
                <td><b>dogRent:</b><%=d.dogRent%></td>
                <td><b>additionalStorage:</b><%=d.additionalStorage%></td>
                <td><b>barbeque:</b><%=d.barbeque%></td>
                <td><b>park:</b><%=d.park%></td>      
                </tr>
                <tr>
                <td><b>firePlace:</b><%=d.firePlace%></td>                
                <td><b>leaseLength:</b><%=d.leaseLength%></td>                                
                <td><b>microwave:</b><%=d.microwave%></td>
                <td><b>onsiteMaintenance:</b><%=d.onsiteMaintenance%></td>
                <td><b>onlineMaintenance:</b><%=d.onlineMaintenance%></td>
                <td><b>highSpeedInternet:</b><%=d.highSpeedInternet%></td>
                <td><b>onlinePayment:</b><%=d.onlinePayment%></td>
                <td><b>clubHouse:</b><%=d.clubHouse%></td>
                </tr>
                <tr>
                <td><b>lounge:</b><%=d.lounge%></td>      
                <td><b>airConditioning:</b><%=d.airConditioning%></td>                
                <td><b>heaters:</b><%=d.heaters%></td>                
                <td><b>windowCovering</b><%=d.windowCovering%></td>
                <td><b>flooring</b><%=d.flooring%></td>
                <td><b>contact</b><%=d.contact%></td>
                <td><b>highSpeedInternet:</b><%=d.highSpeedInternet%></td>
                <td><b>vaccancies</b><%=d.vaccancies%></td>                
                </tr>                
            </table> 
            </tr>
            <tr><table><hr></table></tr>
        </table>                        
    </tr>
    <%
        }
    %>
    </table>
         <table >
    <tr>
        
    </tr>

    <%
        ArrayList<Details> dbooks1=(ArrayList)request.getAttribute("DetailsList2");
        Iterator it1=dbooks1.iterator();
        while(it1.hasNext())
        {
            Details d1=(Details)it1.next();
            //System.out.println(d.apartmentName);
     %>       
        <tr>
        <table>
            <tr>
                <td><h3><u><%=d1.apartmentName%></u></h3></td>   <td>    </td><td>    </td><td>    </td>
            <td><a href="<%=request.getContextPath()%>/CompareServlet?aptName=<%=d1.apartmentName%>&bed=<%=d1.bed%>&rent=<%=d1.rent%>&contact=<%=d1.contact%>">Book</a></td>            
            <!--<td><input type="button" value="Like" onclick="increase()" /></td><td><input type="text" id="Like" value="1"/></td>
            <td><input type="button" value="Dislike" onclick="decrease()" /></td><td><input type="text" id="Dislike" value="1"/></td>-->
            <td><a href="<%=request.getContextPath()%>/DetailsServlet?aptName=<%=d1.apartmentName%>&bed=<%=d1.bed%>&rent=<%=d1.rent%>&contact=<%=d1.contact%>&id=<%=d1.ID%>">Rate</a></td></td>
            </tr>
            <tr>
            <table border="0">
                <tr><td><b>cityStateOrCode:</b><%=d1.cityStateOrCode%></td>
                <td><b>bath:</b><%=d1.bath%></td>         
                <td><b>area:</b><%=d1.area%></td>
                <td><b>patio:</b><%=d1.patio%></td>
                <td><b>pool:</b><%=d1.pool%></td>
                <td><b>rent:</b><%=d1.rent%></td>               
                <td><b>gym:</b><%=d1.gym%></td>
                <td><b>washerDryer:</b><%=d1.washerDryer%></td>
                 </tr>
                <tr>
                <td><b>dishWasher:</b><%=d1.dishWasher%></td>                               
                <td><b>review:</b><%=d1.review%></td>                
                <td><b>garageParking:</b><%=d1.garageParking%></td>                
                <td><b>catRent:</b><%=d1.catRent%></td>                
                <td><b>dogRent:</b><%=d1.dogRent%></td>
                <td><b>additionalStorage:</b><%=d1.additionalStorage%></td>
                <td><b>barbeque:</b><%=d1.barbeque%></td>
                <td><b>park:</b><%=d1.park%></td>      
                </tr>
                <tr>
                <td><b>firePlace:</b><%=d1.firePlace%></td>                
                <td><b>leaseLength:</b><%=d1.leaseLength%></td>                                
                <td><b>microwave:</b><%=d1.microwave%></td>
                <td><b>onsiteMaintenance:</b><%=d1.onsiteMaintenance%></td>
                <td><b>onlineMaintenance:</b><%=d1.onlineMaintenance%></td>
                <td><b>highSpeedInternet:</b><%=d1.highSpeedInternet%></td>
                <td><b>onlinePayment:</b><%=d1.onlinePayment%></td>
                <td><b>clubHouse:</b><%=d1.clubHouse%></td>
                </tr>
                <tr>
                <td><b>lounge:</b><%=d1.lounge%></td>      
                <td><b>airConditioning:</b><%=d1.airConditioning%></td>                
                <td><b>heaters:</b><%=d1.heaters%></td>                
                <td><b>windowCovering</b><%=d1.windowCovering%></td>
                <td><b>flooring</b><%=d1.flooring%></td>
                <td><b>contact</b><%=d1.contact%></td>
                <td><b>highSpeedInternet:</b><%=d1.highSpeedInternet%></td>
                <td><b>vaccancies</b><%=d1.vaccancies%></td>                
                </tr>                
            </table> 
            </tr>
            <tr><table><hr></table></tr>
        </table>                        
    </tr>
    <%
        }
    %>
    </table>
    </body>
</html>
