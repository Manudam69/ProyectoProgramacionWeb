<%-- 
    Document   : Login
    Created on : Nov 18, 2018, 7:21:36 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta charset="UTF-8">
        <title>Inciar Sesión</title>
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
        <form class="form-signin mx-auto p-5 mt-5" style="width: 400px;" action="checklogin.jsp" method="post">
            <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
            <h1 class="h3 mb-3 font-weight-normal">Iniciar sesión</h1>
            <label for="inputUser" class="sr-only">Usuario</label>
            <input type="text" id="inputUser" class="form-control mb-1" placeholder="Usuario" name="usr" required autofocus>

            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control mb-2" placeholder="Contraseña" name="pass" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Recuérdame.
                </label>


            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar sesión</button>

            <div  style="color:red;">
                <%
                    if (request.getParameter("error") != null) {
                        out.println(request.getParameter("error"));
                    }
                    if (request.getParameter("cnt") != null) {
                        out.println(request.getParameter("cnt"));
                        int num = Integer.parseInt(request.getParameter("cnt"));

                        if (num >= 3) {
                %>
                <jsp:forward page="invalida.jsp"/>
                <%
                        }
                    }

                %>
            </div>
            <p class="mt-2">¿Eres un cliente nuevo? <a href="./Registro.jsp">Empieza aquí.</a><br>
                <a href="./Recuperacion.jsp">¿Olvidaste tu contraseña?</a> 
            </p>
        </form>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>