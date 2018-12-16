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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.2.4/email.min.js"></script> <!--Libreria necesaria para enviar correos -->
        <title>Recuperacion</title>
        <link rel="icon" type="image/png" href="images/logo.png">
    </head>
    <body>
        <%
            if (request.getParameter("resBD") != null) {
                if (request.getParameter("resBD").equals(request.getParameter("res"))) {
                    String usuario = String.valueOf(request.getSession().getAttribute("recuperaUsuario"));
                    String correo = String.valueOf(request.getSession().getAttribute("recuperaCorreo"));
        %>

        
        
        
         <form class="form-signin mx-auto p-5 mt-5" style="width: 400px;" action="index.jsp" method="post">
            <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
            <h1 class="h3 mb-3 font-weight-normal">Recuperacion</h1>
            <p class="lead">Hemos enviado un correo a tu bandeja de entrada, por favor sigue las instrucciones.</p>
            
            <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="">Ir al inicio.</button>

        </form>
        
        <script>
          // var nombre = "<%=usuario%>";
          // var correo = "<%=correo%>";
            
          // emailjs.init("user_9uafhwkJK3GEm5Swrs4jg");
          // emailjs.send("gmail", "plantilla_recuperacion", {"to_mail":correo,"name":nombre})
          // alert('Correo enviado');
            
        </script>
        <%
                }
            }else{

        %>
        <script> alert('Datos mal ingresados'); </script>
        <jsp:forward page="CheckRecuperacion.jsp"/>
        <%}%>
        
      </body>
</html>
