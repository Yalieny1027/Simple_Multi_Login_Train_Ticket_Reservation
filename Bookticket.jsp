<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="jfiles.Cookies"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Ticket Reservations</title>
<link rel="stylesheet" href="UserHome_Css.css">
<% 
String dname = request.getParameter("name");
String url = "Useropt.jsp?name="+dname; %>
 <a href = '<%=url%>'>Go Back</a>
</head>
<body>
    <%
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
     <script>
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

 <h1 class="hd"> Book Ticket <br/></h1>
 <%
 String name = request.getParameter("name");
System.out.println(name);

 %>
	<header>
	<div class="home">
		<p1 class="menu"><a onclick="availabletrains('<%=name%>')">Available Trains</a></p1>
	</div>
	</header>
	<form  class="tab" action="booktic" method="GET"><br/><br/>
        <input type="text" value = '<%=name%>' name = "cname" hidden>
        Source :<input type="text" name="bsource"><br/><br/>
        Destination :<input type="text" name="bdestination"><br/><br/>
        Train Number :<input type="text" name="btrainno"><br/><br/>
        Class(F/S/E) :<input type="text" name="bclass"><br/><br/>
        Number of tickets :<input type="text" name="bnumtic"><br/><br/>
        <input type="submit" value=" BOOK TICKET ">

	</form><br/>


    <%
}
else{
    response.sendRedirect("signoutall.jsp");
}
%>
</body>
</html>
