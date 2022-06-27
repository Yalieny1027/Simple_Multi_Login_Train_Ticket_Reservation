<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@page import="jfiles.Common"%>
    <%@page import="jfiles.Cookies"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Ticket Reservations</title>
<link rel="stylesheet" href="UserHome_Css.css">

</head>
<body>
	
	<script>
		function logout(){
			
			var newurl = "http://localhost:8080/Web_Train/signoutall.jsp" ;
			window.location.replace(newurl);
		
	}
	</script>
		<h1 class="hd"> Login Error!! <br/></h1>
	<div class="hd">
		<%       String name = request.getParameter("name"); %>
		<p1 class="menu"><a onclick="logout()">Return to Homepage...</a></p1>
	</div>

</body>
</html>