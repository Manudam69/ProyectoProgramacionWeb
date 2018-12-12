<%-- 
    Document   : invalida
    Created on : 9/12/2018, 11:31:04 PM
    Author     : Jafet
--%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String query = "select * from farolito.usuarios";
            objConn.Consult(query);
            String usre = request.getParameter("usr");
            out.println("<br> tu " + usre);         
           objConn.InvalidaPass(usre);    
        %>
        <h1>Hemos tenido que invalidar tu contraseña</h1>
        <p>Por favor ingresa tu correo para enviar las instrucciones de como puedes recuperar tu contraseña</p>

    </body>
</html>
