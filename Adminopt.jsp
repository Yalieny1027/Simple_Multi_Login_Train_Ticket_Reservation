<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@page import="jfiles.JWT"%>
	<%@page import="jfiles.Common"%>
	<%@page import="jfiles.Cookies"%>
	<%@page import="java.io.IOException"%>
	<!DOCTYPE html>
	<html>
		<head>
			<meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8;width=device-width, initial-scale=1">
			<title>Train Ticket Reservations</title>
			<link rel="stylesheet" href="UserHome_Css.css">
			<% String url = request.getHeader("referer"); %>
 <a href = '<%=url%>'>Go Back</a>
			<style>
				
				.sidenav {
					height: 100%;
	  width: 240px;
	  position: fixed;
	  z-index: 1;
	  top: 0;
	  left: 0;
	  background-color: rgb(124, 205, 225);
	  overflow-x: hidden;
	  padding-top: 20px;
	}
	
	.sidenav a {
	  padding: 6px 8px 6px 16px;
	  text-decoration: none;
	  font-size: 20px;
	  color: #212121;
	  display: block;
	}
	
	.sidenav a:hover {
		color: #f1f1f1;
	}
	
	.main {
		margin-left: 160px; /* Same as the width of the sidenav */
		font-size: 28px; /* Increased text to enable scrolling */
		padding: 0px 10px;
	}
	.space {
		width: 4px;
		height: auto;
		display: inline-block;
	}
	
	@media screen and (max-height: 450px) {
		.sidenav {padding-top: 15px;}
		.sidenav a {font-size: 18px;}
	}
	</style>
	</head>
	
	<body>
		<script>
			function addact(name){
				var newurl = "http://localhost:8080/Web_Train/Loginservlet.jsp?act="+name ;
				window.open(newurl,"_blank") || window.location.replace(newurl);				
			}
			function adminopt(cname){
				name = cname;
				console.log(name);
				var newurl = "http://localhost:8080/Web_Train/Adminopt.jsp?name="+cname ;
				window.location.replace(newurl);
		}
		function addtrain(name){
			if(name=="null"){
				alert("Select an user first!!");
			}
			else{
			var newurl = "http://localhost:8080/Web_Train/Addtrain.jsp?name="+name ;
			window.location.replace(newurl);
		}
	}	
	function allticket(name){
			if(name=="null"){
				alert("Select an user first!!");
			}
			else{
			var newurl = "http://localhost:8080/Web_Train/Alltickets.jsp?name="+name ;
			window.location.replace(newurl);
		}
	}
	function userdetails(name){
			if(name=="null"){
				alert("Select an user first!!");
			}
			else{
			var newurl = "http://localhost:8080/Web_Train/Userdetails.jsp?name="+name ;
			window.location.replace(newurl);
		}
	}
		function logout(name){
			if(name=="null"){
				alert("Select an user first!!");
			}
			else{
			var newurl = "http://localhost:8080/Web_Train/Logout.jsp?name="+name ;
			window.location.replace(newurl);
		}
	}
	function availabletrains(name){
			if(name=="null"){
				alert("Select an user first!!");
			}
			else{
			var newurl = "http://localhost:8080/Web_Train/Availabletrains.jsp?name="+name ;
			window.location.replace(newurl);
		}
	}
	</script>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
<h1 class="hd"> Admin Options <br/></h1>
 <div class="sidenav">
	 <ul>
		<% String g ="true"; %>
		<p1><a onclick="addact('<%=g%>')" >Add another account</a></p1>
		 <p1><a href="signoutall.jsp">Sign out of all accounts</a></p1>
	</ul>
		<% String cname; %>
		<%
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			System.out.println(name + "=" + value);
		%>
		<p1><a target="_blank" onclick="adminopt('<%=name%>')" >
	<%
	if(!name.equals("JSESSIONID")) {
		out.println( name ); 
		cname = name;
		Cookie cc = new Cookie("currentuser", name);
        response.addCookie(cc);
		System.out.println(cname);
	}
	  
	  %>
	</a></p1>
	<%
	}
	String c = request.getParameter("name");
	System.out.println("getname here "+ c);
	%>
  </div>
	
  <div class="main">
	<header>

<div class="hd">
	<p1 class="menu"><a href="index.jsp">Home</a></p1>
</div>
<div class="hd">
	<p1 class="menu"><a onclick="addtrain('<%=c%>')">Add New Train</a></p1>
</div>
<div class="hd">
	<p1 class="menu"><a onclick="allticket('<%=c%>')">Booked Ticktes</a></p1>
	<form action="bookedtick" method="get"></form>
</div>
<div class="hd">
	<p1 class="menu"><a onclick="availabletrains('<%=c%>')">Available Trains</a></p1>
</div>
<div class="hd">
	<p1 class="menu"><a onclick="userdetails('<%=c%>')">User Details </a></p1>
</div>
<div class="hd">
	<p1 class="menu"><a href="Adminsignup.jsp">Admin Sign Up</a></p1>
</div>
<div class="hd">
	<p1 class="menu"><a onclick="logout('<%=c%>')">Log Out</a></p1>
</div>
</header>
</div>

</body>
</html>




