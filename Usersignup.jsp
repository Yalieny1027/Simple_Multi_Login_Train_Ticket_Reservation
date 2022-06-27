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
    <h1 class="hd"> User Sign Up <br/></h1>
    
<form  class="tab" action="usersignup" method="put"><br/>
    Name :<input type="text" name="uname"><br/><br/>
    Age : <input type="text" name="uage"><br/><br/>
    Gender(F/M) : <input type="text" name="ugender"><br/><br/>
    Phone Number: <input type="text" name="uphone"><br/><br/>
    Password : <input type="password" name="upassword"><br/><br/>
    	<input type="submit" value=" SIGN UP ">
	</form><br/>

</body>
</html>
