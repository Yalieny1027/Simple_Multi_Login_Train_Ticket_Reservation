<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="jfiles.Common"%>
<%@page import="jfiles.Cookies"%>
<%@page import="jfiles.Intermediate"%>
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
  Cookie[] s = request.getCookies();
  for (int i = 0; i < s.length; i++) {
  String namec = s[i].getName();
  String value = s[i].getValue();
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
 <h1 class="hd"> User Details <br/></h1>
  
	<%
  Intermediate inter=new Intermediate();
  inter.selected();
  inter.view_user();
  String name = request.getParameter("name");
      int size = (Common.userdata == null) ? 0 : Common.userdata.size();
          if(size==0){
		  response.sendRedirect("Nodata.jsp?name="+name);
	  }
else{
	%>
<table border ="1" width="500" align="center">
         <tr>
          <th><b>Name</b></th>
          <th><b>Age</b></th>
          <th><b>Gender</b></th>
          <th><b>Phone Number</b></th>
         </tr>
<%

          int y=0;
          for(int i=0;i<Common.userdata.size()/4;i++){
        		  out.println("<tr><td>" + Common.userdata.get(y) + "</td>");
        		  out.println("<td>" + Common.userdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.userdata.get(++y) + "</td>");
        		  out.println("<td>" + Common.userdata.get(++y) + "</td>");
        		  y++;
        	  out.println("</tr>");
          }
          Common.userdata.clear();
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
