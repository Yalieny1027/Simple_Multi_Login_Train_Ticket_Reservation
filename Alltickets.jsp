<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jfiles.Common"%>
<%@page import="jfiles.Intermediate"%>
<%@page import="jfiles.Cookies"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> All Booked Tickets</title>
<link rel="stylesheet" href="UserHome_Css.css">
<% String url = request.getHeader("referer"); %>
 <a href = '<%=url%>'>Go Back</a>
</head>
<body>
    <%
    String dname = request.getParameter("name");
    int z=0;
    Cookie[] cookies = request.getCookies();
    for (int i = 0; i < cookies.length; i++) {
    String namec = cookies[i].getName();
    String value = cookies[i].getValue();
    if(namec.equals(dname)){
        z++;
    }
            }
            if(z>0){
     %>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
 %>
 
 <h1 class="hd"> Booked Tickets <br/></h1>
  
    <%          
    Intermediate inter=new Intermediate();
    inter.selected();
    inter.view_alltic();
    String name = request.getParameter("name");
        int size = (Common.allticdata == null) ? 0 : Common.allticdata.size();
        if(size==0){
		  response.sendRedirect("Nodata.jsp?name="+name);
	  }
    else{
    %>
	<table border ="1" width="500" align="center">
    <TR>
          <th><b>Name</b></th>
          <th><b>Age</b></th>
          <th><b>Gender</b></th>
          <th><b>Phone</b></th>
          <th><b>Source</b></th>
          <th><b>Destination</b></th>
          <th><b>Train number</b></th>
          <th><b>Depart Time</b></th>
          <th><b>Total Price</b></th>
     </TR>
     <%
          int y=0;
          for(int i=0;i<Common.allticdata.size()/9;i++){
        		  out.println("<tr><td>" + Common.allticdata.get(y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.allticdata.get(++y) + "</td>");
        		  y++;
        	  out.println("</tr>");
          }
          Common.allticdata.clear();
    }
        %>
        </table>
        <%
    }
    else{
        response.sendRedirect("signoutall.jsp");
    }
    %>
</body>
</html>
