<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="jfiles.Common"%>
<%@page import="jfiles.Intermediate"%>
<%@page import="jfiles.Cookies"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Ticket Reservations</title>
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
 <h1 class="hd"> Available Trains <br/></h1>
  
	<%
      Intermediate inter=new Intermediate();
      inter.selected();
      inter.view_train();
      String name = request.getParameter("name");
      int size = (Common.traindata == null) ? 0 : Common.traindata.size();
      if(size==0){
		  response.sendRedirect("Nodata.jsp?name="+name);
	  }
  else{
	%>
	<table border ="1" width="500" align="center">
         <tr>
          <th><b>Source</b></th>
          <th><b>Destination</b></th>
          <th><b>Train Number</b></th>
          <th><b>Depart Time</b></th>
          <th><b>First class</b></th>
          <th><b>Second class</b></th>
          <th><b>Economy</b></th>
          <th><b>Available Tickets</b></th>
         </tr>
          <%

          int y=0;
          for(int i=0;i<Common.traindata.size()/8;i++){
        		  out.println("<tr><td>" + Common.traindata.get(y) + "</td>");
        		  out.println("<td>" + Common.traindata.get(++y) + "</td>");
        		  out.println("<td>" + Common.traindata.get(++y) + "</td>");
        		  out.println("<td>" + Common.traindata.get(++y) + "</td>");
        		  out.println("<td>" + Common.traindata.get(++y) + "</td>");
        		  out.println("<td>" + Common.traindata.get(++y) + "</td>");
        		  out.println("<td>" + Common.traindata.get(++y) + "</td>");
        		  out.println("<td>" + Common.traindata.get(++y) + "</td>");
        		  y++;
        	  out.println("</tr>");
          }
          Common.traindata.clear();
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
