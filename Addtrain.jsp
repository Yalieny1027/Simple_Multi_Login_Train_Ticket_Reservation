<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="jfiles.Cookies"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Train Ticket Reservations</title>
<link rel="stylesheet" href="UserHome_Css.css">
<% String url = request.getHeader("referer"); %>
 <a href = '<%=url%>'>Go Back</a>
</head>
<body>
    <%
    String name = request.getParameter("name");
    int y=0;
    Cookie[] cookies = request.getCookies();
    for (int i = 0; i < cookies.length; i++) {
    String namec = cookies[i].getName();
    String value = cookies[i].getValue();
    if(namec.equals(name)){
        y++;
    }
            }
            if(y>0){
     %>
    <h1 class="hd"> Add New Train Details <br/></h1>			
		
<form  class="tab" action="addtrain" method="put"><br/>
    Source :<input type="text" name="source"><br/><br/>
    Destination : <input type="text" name="destination"><br/><br/>
    Train Number: <input type="text" name="trainno"><br/><br/>
    Depart time: <input type="text" name="departtime"><br/><br/>
    First class price: <input type="text" name="fprice"><br/><br/>
    Second class price: <input type="text" name="sprice"><br/><br/>
    Economic price: <input type="text" name="eprice"><br/><br/>
    Available Tickets: <input type="text" name="availabletics"><br/><br/>
		<input type="submit" value=" ADD TRAIN ">
	</form><br/>
<%
}
else{
    response.sendRedirect("signoutall.jsp");
}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
 %>
   
</body>
</html>
