<%-- 
    Document   : Recuperacion
    Created on : Nov 23, 2018, 8:59:46 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form class="form-signin mx-auto p-5 mt-5" style="width: 400px;" action="PreguntaRecuperacion.jsp" method="post">
           <%  String[] captcha = {"not a robot", "qGphJD", "smwm", "Google", "Memes"};
                int aleatorio = ((int) (Math.random() * (4 - 0 + 1) + 0)); //Aleatorio para seleccionar una de las imagenes
                //Colocar en una string la ruta y nombre del archivo de imagen a utilizar
                String aux = "./images/" + aleatorio + ".jpg";

            %>
            
            
            
            <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
            <h1 class="h3 mb-3 font-weight-normal">Recuperacion</h1>
            
            <label for="inputUser" class="sr-only">Usuario</label>
            <input type="text" id="inputUser" class="form-control mb-1" placeholder="Usuario" name="usr" required autofocus>
            
            <label for="inputEmail" class="sr-only">Email</label>
            <input type="email" id="inputEmail" class="form-control mt-2 mb-5" placeholder="you@example.com" name="email">  
           
            Captcha: <input type="text" name="catpcha" size="20">
            <input type="hidden" name="captchaOk" value="<%=captcha[aleatorio]%>"/><br><br>
            <img src="<%=aux%>" width="137" height="56"/><br><br>
            
            <button class="btn btn-lg btn-primary btn-block" type="submit">Recuperar mi cuenta</button>
            <div style="color:red;">
                 <% 
                   if (request.getParameter("error") != null) {
                        out.println(request.getParameter("error"));
                    }%>
                    
            </div>
        </form>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
