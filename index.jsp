<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Ticket Reservations</title>
<link rel="stylesheet" href="UserHome_Css.css">

</head>
<body>
	<script>
			
		function useropt(cname){
			var newurl = "http://localhost:8080/Web_Train/Useropt.jsp?name="+cname ;
			window.location.replace(newurl);
	}
	function adminopt(name){
		var newurl = "http://localhost:8080/Web_Train/Adminopt.jsp?name="+name ;
		window.location.replace(newurl);
	}
	</script>
	<h1 class="hd"> Train Ticket Reservation <br/></h1>
		<%  String name=request.getParameter("username"); %>
	<div class="hd" >
		<p1 class="menu"><a onclick="adminopt('<%=name%>')">Admin Login</a></p1>
	</div>
	<div class="hd" >
		<p1 class="menu" ><a onclick="useropt('<%=name%>')">User Login</a></p1>
	</div>
	<div class="hd">
		<p1 class="menu"><a href="Usersignup.jsp">User Sign Up</a></p1>
	</div>

</body>

</html>
