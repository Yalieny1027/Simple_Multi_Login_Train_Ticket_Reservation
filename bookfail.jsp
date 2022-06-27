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
		function bookticket(name){
			if(name=="null"){
				alert("Select an user first!!");
			}
			else{
			var newurl = "http://localhost:8080/Web_Train/Bookticket.jsp?name="+name ;
			window.location.replace(newurl);
		}
	}
	function useropt(name){
			if(name=="null"){
				alert("Select an user first!!");
			}
			else{
			var newurl = "http://localhost:8080/Web_Train/Useropt.jsp?name="+name ;
			window.location.replace(newurl);
		}
	}
	</script>
		<h1 class="hd"> Ticket Booking Failed!! <br/></h1>
	<div class="hd">
		<%       String name = request.getParameter("name"); %>
		<p>Enter valid details!!</p>
		<p1 class="menu"><a onclick="bookticket('<%=name%>')">Book Tickets Again</a></p1>
		<p1 class="menu"><a onclick="useropt('<%=name%>')">Return to options</a></p1>
	</div>

</body>
</html>