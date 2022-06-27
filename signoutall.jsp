<%@page import="jfiles.Cookies"%>
<%
session.invalidate();
Cookies.cookies.clear();
Cookie cookie = null;
Cookie[] cookies = null;
cookies = request.getCookies();
if( cookies != null ) {
    for (int i = 0; i < cookies.length; i++) {
        cookie = cookies[i];
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }
}
response.sendRedirect("index.jsp");
%>