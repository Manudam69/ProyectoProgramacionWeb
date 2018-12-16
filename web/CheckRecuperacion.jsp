<%-- 
    Document   : CheckRecuperacion
    Created on : Dec 9, 2018, 4:44:56 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.2.4/email.min.js"></script> <!--Libreria necesaria para enviar correos -->
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("resBD") != null) {
                if (request.getParameter("resBD").equals(request.getParameter("res"))) {
                    String usuario = String.valueOf(request.getSession().getAttribute("recuperaUsuario"));
                    String correo = String.valueOf(request.getSession().getAttribute("recuperaCorreo"));
        %>
        <h2>Hemos enviado un correo a tu bandeja de entrada, por favor sigue las instrucciones</h2>
        <script>
          //  var nombre = "<%=usuario%>";
         //   var correo = "<%=correo%>";
            
         //   emailjs.init("user_9uafhwkJK3GEm5Swrs4jg");
         //   emailjs.send("gmail", "plantilla_recuperacion", {"to_mail":correo,"name":nombre})
          //  alert('Correo enviado');
            
        </script>
        <%
                }
            }else{

        %>
        <h2>No has contestado bien la pregunta de recuperacion</h2>
        <%}%>
    </body>
</html>
