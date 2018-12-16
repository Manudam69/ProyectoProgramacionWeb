<%-- 
    Document   : PreguntaRecuperacion
    Created on : Dec 9, 2018, 4:45:44 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta charset="UTF-8">
        <title>Recuperacion</title>
        <link rel="icon" type="image/png" href="images/logo.png">
        <style>
            * {
                font-family: 'Abel', sans-serif;
            }

            body {
                background-color: rgb(248, 249, 250);
            }

        </style>
    </head>
    <body class="text-center">
        <%
            String usuarioBD = "";
            String usuario = "", correo = "";
            int numPregunta = 0;
            String respuesta = "";
            String pregunta = "";
            String cap = "";
            String capOK="";
            String query = "select * from farolito.usuarios";
            objConn.Consult(query);
            objConn.rs.beforeFirst();

            cap = request.getParameter("catpcha");
            capOK = request.getParameter("captchaOk");
            
            
            if (request.getParameter("usr") != null) {
                usuario = request.getParameter("usr");
                request.getSession().setAttribute("recuperaUsuario",usuario);
            }
            
            if(request.getParameter("email")!=null){
                correo = request.getParameter("email");
                request.getSession().setAttribute("recuperaCorreo",correo);
            }
            
            while (objConn.rs.next()) {
                usuarioBD = objConn.rs.getString(2);
                if (usuario.equals(usuarioBD)) {
                    numPregunta = objConn.rs.getInt(6);
                    respuesta = objConn.rs.getString(7);
                }
            }

             if (!usuario.equals(usuarioBD)) {
             %>
             <jsp:forward page="Recuperacion.jsp"/>
             <%
             }
            

            switch (numPregunta) {
                case 1:
                    pregunta = "¿Cómo se llamaba mi primera mascota?";
                    break;
                case 2:
                    pregunta = "¿En que ciudad naciste?";
                    break;
                case 3:
                    pregunta = "¿Lugar dónde fuiste al colegio?";
                    break;
                case 4:
                    pregunta = "¿Pelicula favorita?";
                    break;
                case 5:
                    pregunta = "¿En que ciudad naciste?";
                    break;
            }
        %>
        <%
           
            if(capOK.equals(cap)){
            }else{
       %>
        <jsp:forward page="Recuperacion.jsp">
        <jsp:param name="error" value="Ingresa de nuevo la captcha.<br>Vuelve a intentarlo."/>
    </jsp:forward>
        <%}%>
        
        <form class="form-signin mx-auto p-5 mt-5" style="width: 400px;" action="CheckRecuperacion.jsp" method="post">
            <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
            <h1 class="h3 mb-3 font-weight-normal">Recuperacion</h1>
            <p class="lead"><%out.println(pregunta);%></p>
            <input type="text" placeholder="Respuesta"  name="res" class=" form-control mb-5">

            <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="">Recuperar mi cuenta</button>

            <input type="text" name="resBD" value="<%=respuesta%>" hidden>
            <input type="text" name="usrBD" value="<%=usuario%>" hidden>
        </form>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
