<%-- 
    Document   : carrito
    Created on : Nov 22, 2018, 6:27:23 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de compras</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/index.css">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Saira" rel="stylesheet">
        <link rel="icon" type="image/png" href="images/logo.png">
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
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tienda </a>
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
                    <a href="./carrito.jsp"><img src="images/carrito.png" class="img-fluid mb-3 mr-3" alt="Algo pasa" width="50"></a>
                    <form class="form-inline my-2 my-lg-0" action="Cerrarsesion.jsp">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Cerrar Sesión</button>
                    </form>

                    <%}%>
                </div>
            </nav>
        </header>

        <form action="./CheckOut.jsp">
            <div class="container mt-5 pt-5">
                <div class="text-center">
                    <img src="images/carrito.png" class="img-fluid mb-3 mr-3 text-center" alt="Algo pasa" width="50">
                    <p class="h1 ">CARRITO DE COMPRA</p>
                </div>
                <div class="media mt-5">
                    <img class="d-flex mr-3" src="images/prueba.jpg" alt="Generic placeholder image" width="10%">
                    <div class="media-body lead">
                        <p class="h3 mt-0">Descripción</p>    
                        La descripcion va aqui.
                    </div>
                </div>
                <div class="text-right">
                    <button type="button" class="btn btn-danger">Eliminar del carrito</button>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12 text-right"><p class="lead">Cantidad de productos: 1</p></div>
                    <div class="col-md-12 text-right"><p class="lead">Subtotal: $ 7500 MXN</p></div>
                    <div class="col-md-12 text-right"><button type="submit" class="btn btn-success">Proceder al pago</button></div>              
                </div>    
            </div>

        </form>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
