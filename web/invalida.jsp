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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
         <link rel="icon" type="image/png" href="images/logo.png">
    </head>
    <body>
        <%
            String query = "select * from farolito.usuarios";
            objConn.Consult(query);
            String  usre = "";
            if(request.getParameter("usr")!=null){
                usre = request.getParameter("usr");    
            }
            objConn.InvalidaPass(usre);    
        %>
        
         <form class="form-signin mx-auto p-5 mt-5" style="width: 400px;" action="index.jsp" method="post">
            <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
            <h1 class="h3 mb-3 font-weight-normal">Bloqueo de Cuenta</h1>
            <p class="lead">Estimad@ <b><%= usre%></b>, Has superado los intentos permitidos, por un contraseña erronéa. Invalidamos tu cuenta. </p>
            <p class="lead">Porfavor ingresa al apartado de <a href="Recuperacion.jsp">"¿Olvidaste tu contraseña?"</a> para completar 
            el proceso de recuperacion.</p>
            <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="">Ir al inicio.</button>

        </form>
        

    </body>
</html>
