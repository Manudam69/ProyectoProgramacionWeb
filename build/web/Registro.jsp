<%-- 
    Document   : Registro
    Created on : Nov 18, 2018, 7:22:11 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta charset="UTF-8">
        <title>Registro de El farolito</title>
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
        <div class="container">


            <form class="form-signin mx-auto p-5 mt-5">
                <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
                <h1 class="h3 mb-3 font-weight-normal">Crear cuenta</h1>

                <label for="inputName" class="sr-only">Nombre</label>
                <input type="text" id="inputName" class="form-control mb-1" placeholder="Tu nombre" required>

                <label for="inputEmail" class="sr-only">Correo electrónico</label>
                <input type="email" id="inputEmail" class="form-control mb-1" placeholder="Correo electrónico" required autofocus>

                <label for="inputUser" class="sr-only">Usuario</label>
                <input type="text" id="inputUser" class="form-control mb-1" placeholder="Usuario" required>

                <label for="inputPassword" class="sr-only">Contraseña</label>
                <input type="password" id="inputPassword" class="form-control mb-1" placeholder="Contraseña" required>

                <label for="inputPassword2" class="sr-only">Contraseña</label>
                <input type="password" id="inputPassword2" class="form-control mb-1" placeholder="Vuelve a escribir la contraseña" required>

                <label for="Pregunta">Pregunta de recuperación</label>
                <select class="custom-select d-block w-100 mb-1" id="Pregunta" required>
                    <option value="">Elegir...</option>
                    <option>¿Cómo se llamaba mi primera mascota?</option>
                    <option>¿En que ciudad naciste?</option>
                    <option>¿Lugar dónde fuiste al colegio?</option>
                    <option>¿Pelicula favorita?</option>
                    <option>¿Nombre de la calle en la que crecí?</option>
                </select>
                
                <label for="Respuesta" class="sr-only">Respuesta</label>
                <input type="text" id="Respuesta" class="form-control mb-5" placeholder="Respuesta" required>
                
                <button class="btn btn-lg btn-primary btn-block" type="submit">Crear tu cuenta en el farolito</button>
                <p class="mt-2">Ya tienes una cuenta? <a href="./Login.jsp"> Iniciar sesión.</a></p>



            </form>

        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
