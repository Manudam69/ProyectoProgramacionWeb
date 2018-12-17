<%-- 
    Document   : Contacto
    Created on : Nov 18, 2018, 7:21:05 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = (String) session.getAttribute("usuario");//Usuario y Galleta
    Cookie[] galleta = request.getCookies();
    String Fondo = "";
    String FondoLetra = "";
%>
<%
    for (int i = 0; i < galleta.length; i++) {//Busca los colores que el usuario selecciono usando la sesion
        if (galleta[i].getName().equals(usuario + "Fondo")) {
            Fondo = galleta[i].getValue();
        }
        if (galleta[i].getName().equals(usuario + "Letra")) {
            FondoLetra = galleta[i].getValue();
        }

    }
%>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Contáctanos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link rel="stylesheet" href="css/contacto.css">
        <script src="./js/CorreoContacto.js"></script> 
        <link rel="icon"  type="image/png" href="images/logo.png">
        <style>
            body{
                background-color:<%=Fondo%>;<%//Al recuperar los colores se ingresan en el style de la pagina%>
                  color:<%=FondoLetra%>;
            }          
        </style>
        
        
    </head>

    <body>
        <header class="pb-2">
            <nav class="navbar navbar-expand-lg navbar-light fixed-top">
                <a class="navbar-brand" href="./index.jsp" id="logo">
                    <img src="images/logo.png" width="60" height="60" class="d-inline-block align-top ml-4 mb-0">
                    <p id="slogan" class="mb-0">Donde tu tiempo vale oro</p>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="./index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./Vision.jsp">Visión</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tienda</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="./LineaBlanca.jsp">Linea blanca</a>
                                <a class="dropdown-item" href="./Electronicos.jsp">Electrónicos</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./AcercaDe.jsp">Acerca De</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="./Contacto.jsp">Contáctanos<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./Ayuda.jsp">Ayuda</a>
                        </li>
                    </ul>
                    <%
                        if (session.getAttribute("usuario") == null) {
                    %>
                    <form class="form-inline my-2 my-lg-0" action="Login.jsp">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Iniciar Sesión</button>
                    </form>
                    <%
                    } else {
                    %>
                    <a href="./carrito.jsp"><img src="images/carrito.png" class="img-fluid mb-3 mr-2" alt="Algo pasa" width="50"></a>
                    <a id="NomUsuario" style="color: black"><%=request.getSession().getAttribute("usr")%></a> &nbsp; &nbsp;
                    <a href="./Nocturno.jsp"><img src="images/night_mode.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Normal.jsp"><img src="images/File_Alt.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Invierno.jsp"><img src="images/snowflake.png" class="img-fluid mb-3 mr-3" alt="Modo Nocturno" width="20"></a>
                    
                    <form class="form-inline my-2 my-lg-0" action="Cerrarsesion.jsp">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Cerrar Sesión</button>
                    </form>
                    
                    <%}%>
                </div>
            </nav>
        </header>

        <div class="mt-5 pt-5"></div>
        <div class="container">
            <form class="form-signin mx-auto text-center mt-5" method="post">
                <img class="mb-4" src="images/logo.png" alt="" width="72" height="72">
                <h1 class="h3 mb-3 font-weight-normal text-center">Contacto</h1>
                <label for="inputUsername" class="sr-only">Usuario</label>
                <p class="text-left mb-0">Usuario</p>
                <input type="text" id="usuario" class="form-control mb-2" placeholder="Username"autofocus>

                <label for="inputEmail" class="sr-only">Correo</label>
                <p class="text-left mb-0">Correo electrónico*</p>
                <input type="email" id="to_mail" class="form-control mb-2" placeholder="alguien@ejemplo.com" required>

                <label for="inputSubject" class="sr-only">Asunto</label>
                <p class="text-left mb-0">Asunto*</p>
                <input type="text" id="asunto" class="form-control mb-4" placeholder="Subject" required>

                <div class="form-group" data-for="message">
                    <label class="form-control-label mbr-fonts-style display-7" for="message-form1-2w">Mensaje*</label>
                    <textarea type="text" class="form-control" name="message" rows="10" data-form-field="Message" id="mensaje"></textarea>
                </div>

                <div class="row text-right">
                    <div class="col-md-9"></div>
                    <div class="col-md-3">
                        <button class="btn btn-lg btn-primary btn-block mb-0 w-100 " type="submit" onclick="enviar()">Enviar</button>
                        <p class="mb-0 text-left mt-1" style="font-size: 13px;">* Obligatorio</p>
                    </div>
                </div> 
            </form>
        </div>

        <footer class="footer shadow-lg pb-2 mt-5">
            <hr>
            <div class="row container-fluid mt-0">
                <div class="col-md-3 text-center">
                    <img src="images/logo.png" width="60" height="60" class="mb-0 mp-0 mt-0">
                </div>
                <div class="col-md-6 text-center">
                    <a href="https://github.com/Manudam69" target="_blank"><img src="images/github.png" width="35" height="35" class="mb-0 mp-0  mr-2 mt-2 text-right" style="filter: invert(100)"></a>
                    <a href="https://twitter.com/farolitooficial?lang=es" target="_blank"><img src="images/twitter.png" width="35" height="35" class="mb-0 mp-0 mt-2 text-right" style="filter: invert(100)"></a>
                </div>
                <div class="col-md-3 text-center mt-3">
                    <span class="text-muted">El farolito &copy; 2018. Todos los derechos reservados.</span>
                </div>
            </div>
        </footer>
        
        
         <script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.2.4/email.min.js"></script> <!--Libreria necesaria para enviar correos -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>