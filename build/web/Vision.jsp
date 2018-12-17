<%-- 
    Document   : Vision
    Created on : Nov 18, 2018, 7:22:50 PM
    Author     : MD
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.ProductoCarrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario1 = (String) session.getAttribute("usuario");//Usuario y Galleta
    Cookie[] galleta = request.getCookies();
    String Fondo = "";
    String FondoLetra = "";
%>
<%
    for (int i = 0; i < galleta.length; i++) {//Busca los colores que el usuario selecciono usando la sesion
        if (galleta[i].getName().equals(usuario1 + "Fondo")) {
            Fondo = galleta[i].getValue();
        }
        if (galleta[i].getName().equals(usuario1 + "Letra")) {
            FondoLetra = galleta[i].getValue();
        }

    }
%>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Tienda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="images/logo.png">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link rel="stylesheet" href="css/index.css">
        <style> 
            #body{ background-color:<%=Fondo%>;<%//Al recuperar los colores se ingresan en el style de la pagina%>
                  color:<%=FondoLetra%>;}
            #contenido{
                background-color:<%=Fondo%>;
            }            
            
            </style>
    </head>

    <body id="body">
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
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Visión<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tienda</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="./LineaBlanca.jsp">Linea blanca</a>
                                <a class="dropdown-item" href="./electronicos.jsp">Electrónicos</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./AcercaDe.jsp">Acerca De</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./Contacto.jsp">Contáctanos</a>
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

                <img class="img-fluid mt-5 pt-5 mb-0" src="images/Vision.jpg" alt="Thumbnail image" id="img">
        <hr>
        <div class="container mt-5" id="contenido">
            <p class="h2">Nuestro objetivo</p>
            <p class="lead text-justify">
                <span>El objetivo que tenemos en ElFarolito.com es ofrecer los mejores electronicos a nuestros clientes al mejor precio, siendo nosotros la mejor opción de todo el mercado  que puedas encontrar en la actualidad</span>
                <span>Queremos ofrecerte a ti y a tu familia los mejores productos de calidad, estamos comprometidos con todos nuestros clientes a ofrecerles productos 100% funcionales y sin ninguna falla de fabrica.</span>
                <span> Queremos ser la mejor opcion para nuestros clientes y estamos comprometidos con darte las mejores facilidades.</span>
            </p>
            <hr>
            <p class="h2">Nuestra visión</p>
            <p class="lead text-justify">
                <span>La vision que tenemos es que cada usuario del ElFarolito.com pueda satisfacer las tareas basicas en su hogar y en la vida cotidana gracias a los dispositivos electronicos basicos y electrodomesticos.</span>
                <span>Queremos ofrecer precios accesibles a todas las personas, sabemos que no todos pueden hacerse con ciertos dispositivos, ElFarolito.com tenemos bien en claro las necesidades de nuestros clietnes, </span>
                <span>Aqui encontraras el dispositivo de acuerdo con tus necesidades al precio mas accesible para ti.</span>
            </p>
            <hr>
            <p class="h2">Nuestra misión</p>
            <p class="lead text-justify">
                <span>1.- Queremos ser la unica opcion de nuestros clientes como fuente confiable para adquirir sus dispositivos a le mejor precio.<br></span>
                <span>2.- Solo ofrecer articulos de calidad y al mejor precio.<br></span>
                <span>3.- Tener una buena relacion con nuestros clientes atendiendo sus dudas y preocupaciones antes de adquirir cualquier producto de nuestra tienda.</span>
            </p>
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
