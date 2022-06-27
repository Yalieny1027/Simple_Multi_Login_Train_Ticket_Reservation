<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="jfiles.Common"%>
<%@page import="jfiles.Cookies"%>
<%@page import="jaas.AULoginModule"%>
<%@page import="jfiles.Intermediate"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Ticket Reservations</title>
<link rel="stylesheet" href="UserHome_Css.css">

</head>
<body>
    <% 
String name = request.getParameter("name");
System.out.println("getname here logout "+ name);
Cookie userNameCookieRemove = new Cookie(name, "");
userNameCookieRemove.setMaxAge(0);
response.addCookie(userNameCookieRemove);

String z = "";
Cookie[] cookies = request.getCookies();
for (int i = 0; i < cookies.length; i++) {
    String namec = cookies[i].getName();
    String value = cookies[i].getValue();
    if(!namec.equals("JSESSIONID") && !namec.equals("currentuser") && !namec.equals(name)) {
        z=namec;
    }
}
String getz = z;
System.out.println("getz in logout "+getz);
if(getz.equals("")){
    Cookie removes = new Cookie("currentuser","");
    removes.setMaxAge(0);
    response.addCookie(removes);
    System.out.println("logout empty");
    session.invalidate();
    response.sendRedirect("index.jsp");
}
else{
if(getz!=null){
Cookie replace = new Cookie("currentuser",getz);
response.addCookie(replace);
}
else{
    Cookie removes = new Cookie("currentuser","");
    removes.setMaxAge(0);
response.addCookie(removes);
System.out.println("logout null");
}

String url;
Intermediate inte = new Intermediate();
	    	inte.selected();
			inte.getRole(name);
	    	if(Common.rl.equals("admin")) {
                url="Adminopt.jsp?name="+getz;
                System.out.println("z "+getz);
	    	}
	    	else {
                url="Useropt.jsp?name="+getz;                
                System.out.println("z "+getz);
	    	}

            System.out.println("LENGTH"+ cookies.length);
            if(cookies.length>=3){
                response.sendRedirect(url);
            }
            else{
                response.sendRedirect("index.jsp");
            }
        }
            
%>
</body>

</html>
