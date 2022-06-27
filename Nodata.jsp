<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="jfiles.Cookies"%>
<!DOCTYPE html>

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
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
 %>
 <h1 class="hd"> No Data Found!!! <br/></h1>
  

</body>
</html>
