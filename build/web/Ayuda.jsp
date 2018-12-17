<%-- 
    Document   : Ayuda
    Created on : Nov 18, 2018, 7:20:53 PM
    Author     : MD
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.ProductoCarrito"%>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta charset="UTF-8">
        <title>Ayuda</title>
        <link rel="stylesheet" href="css/index.css">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Saira" rel="stylesheet">
        <style> 
            body{ background-color:<%=Fondo%>;<%//Al recuperar los colores se ingresan en el style de la pagina%>
                  color:<%=FondoLetra%>;}
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
                        <li class="nav-item">
                            <a class="nav-link" href="./Contacto.jsp">Contáctanos</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="./Ayuda.jsp">Ayuda<span class="sr-only">(current)</span></a>
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
                    <%
                         ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
                        //Cantidad de productos en el carrito
                        int cantCar = 0;
                        for (int i = 0; i < lista_c.size(); i++) {
                            cantCar += lista_c.get(i).getCantidad();
                        }%> 

                    <span class="badge badge-secondary badge-pill"><%=cantCar%></span>
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
        <img src="images/Ayuda.jpg" class="img-fluid mt-5 pt-5 mb-3" alt="Responsive image">
        <div class="container mt-4">
            <ul class="list-unstyled">     
                <p class="h1 text-center">
                    <img class="mb-4 text-center" src="images/logo.png" alt="" width="72" height="72"> 
                    <br> PREGUNTAS FRECUENTES
                </p>
                <li>
                    <p class="lead">¿Cómo se puede comprar en la pagina?</p>
                    <ul>
                        <li class="text-justify">Para comprar en nuestra pagina es tan facil como entrar al apartado de "Tienda" y elegir el departamento deseado, agregar los productos al carrito de compras y finalizar el pago desde el carrito de compras!.</li>
                    </ul>

                </li>

                <li>
                    <p class="lead">¿Cómo me puedo registrar en la pagina?</p>
                    <ul>
                        <li class="text-justify">Para poder realizar tus compras debes de estar registrado, para tener una cuenta en ElFarolito.com necesitas ir al boton de "Iniciar Sesion". y seguir el formulario de registro!</li>
                    </ul>

                </li>
                <li>
                    <p class="lead">¿Qué pasa si olvido mi contraseña?</p>
                    <ul>
                        <li class="text-justify">Necesitas solicitar un cambio de contraseña, será enviado un correo a tu bandeja de entrada donde seguiras los pasos de recuperación</li>
                    </ul>

                </li>
                <li>
                    <p class="lead">¿Por qué mi cuenta fue bloqueada?</p>
                    <ul>
                        <li class="text-justify">Para evitar posibles ataques ciberneticos o suplatancion ed indentidad, despues de tres intentos fallidos invalidamos la cuenta del usuario</li>
                    </ul>

                </li>
                <li>
                    <p class="lead">¿Qué hacer cuando se invalida mi contraseña?</p>
                    <ul>
                        <li class="text-justify">Necesitas solicitar un cambio de contraseña inmediatamente despues de ser invalidada tu contrasñea, para esto tienes que seguir el proceso de recuperación que ofrecemos en la página.</li>
                    </ul>

                </li>
                <li>
                    <p class="lead">¿Dónde puedo encontrar los cupones?</p>
                    <ul>
                        <li class="text-justify">Seran distribuidos en los correos despues de realizar una compra</li>
                    </ul>

                </li>
                <li>
                    <p class="lead">¿Dónde puedo contactar a los miembros?</p>
                    <ul>
                        <li class="text-justify">Podras hablar con nosotros desde el apartado de contacto</li>
                    </ul>

                </li>
            
                <li>
                    <p class="lead"><h1>¿Si tus dudas son diferentes habla con nosotros!</h1></p>
                    <ul>
                        <li class="text-justify"><a href="chatea.jsp">Ingresar al chat AHORA!</a></li>
                    </ul>

                </li>
            </ul>
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


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
