<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="jfiles.Cookies"%>
    <%@page import="jfiles.Common"%>
<%@page import="jfiles.Intermediate"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-Control" content="no-store,no-cache,must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<title> Train Ticket Reservations</title>
<link rel="stylesheet" href="UserHome_Css.css">
</head>
<body>
    <h1 class="hd"> Login <br/></h1>
    <%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    
    String name= (String)session.getAttribute("username");
    String role= (String)session.getAttribute("role");
    
    String g = (String)request.getParameter("act");
    System.out.println(g);
    if(g==null){
    if(name!=null){
        if(role=="user"){
        response.sendRedirect("Useropt.jsp?name="+name);
        }
        else{
            response.sendRedirect("Adminopt.jsp?name="+name);
        }
    }
}
    %>
    <form  class="tab" action="loginservlet" method="get"><br/><br/>
        Name :<input type="text" name="username"><br/><br/>
        Password :<input type="password" name="password"><br/><br/>
        <input type="submit" value=" LOGIN ">
    </form>
</body>
</html>