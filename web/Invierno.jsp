<%-- 
    Document   : Nocturno
    Created on : Dec 13, 2018, 10:41:15 PM
    Author     : Hector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="REFRESH" content="0;URL=index.jsp">
    </head>
    <%
        String name = (String) session.getAttribute("usuario");
    %>
    <%
        Cookie galletafondo = new Cookie(name + "Fondo", "#06B9CF");
        galletafondo.setPath("/");
        galletafondo.setMaxAge(60 * 60 * 24);
        response.addCookie(galletafondo);
        Cookie galletafondo2 = new Cookie(name + "Letra", "#CDF3F7");
        galletafondo2.setPath("/");
        galletafondo2.setMaxAge(60 * 60 * 24);
        response.addCookie(galletafondo2);


    %>  
    <body>

    </body>
</html>
