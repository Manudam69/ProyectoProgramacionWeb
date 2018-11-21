<%-- 
    Document   : LineaBlanca
    Created on : Nov 18, 2018, 7:22:00 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Tienda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Saira" rel="stylesheet">
        <link rel="icon" type="image/png" href="images/logo.png">
        <link rel="stylesheet" href="css/tienda.css">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
    </head>

    <body class="bg-light">
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
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tienda</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item active" href="./LineaBlanca.jsp">Linea blanca<span class="sr-only">(current)</span></a>
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
                    <form class="form-inline my-2 my-lg-0" action="Login.jsp">
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Iniciar Sesión</button>
                    </form>
                </div>
            </nav>
        </header>
        
        <div class="mt-5 mb-5 row container-fluid"></div>
        <div class="bg mt-0 mb-0">
            <div id="accordion" role="tablist">

                <div class="card" style="border-radius: 0px; border: transparent 1px solid;">
                    <div class="card-header" role="tab" id="headingTwo">
                        <h5 class="mb-0">
                            <a class="collapsed text-muted" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">PRODUCTOS</a>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse bg-light" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="card-body text-muted">
                            <div class="list-group">
                                <a href="#!" class="list-group-item list-group-item-action">Producto 1</a>
                                <a href="#!" class="list-group-item list-group-item-action">Producto 2</a>
                                <a href="#!" class="list-group-item list-group-item-action">Producto 3</a>
                                <a href="#!" class="list-group-item list-group-item-action">Producto 4</a>
                            </div>


                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
