<%-- 
    Document   : Vision
    Created on : Nov 18, 2018, 7:22:50 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Tienda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="images/logo.png">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link rel="stylesheet" href="css/index.css">
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
                    <a href="./carrito.jsp"><img src="images/carrito.png" class="img-fluid mb-3 mr-3" alt="Algo pasa" width="50"></a>
                    <form class="form-inline my-2 my-lg-0" action="Cerrarsesion.jsp">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Cerrar Sesión</button>
                    </form>
                    
                    <%}%>
                </div>
            </nav>
        </header>

        <img class="img-fluid mt-5 pt-5 mb-0" src="images/Vision.jpg" alt="Thumbnail image">
        <hr>
        <div class="container mt-5">
            <p class="h2">Nuestro objetivo</p>
            <p class="lead text-justify">
                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id praesentium cumque ad necessitatibus repudiandae, tempora itaque illo? Iusto fugit, optio dolor vero veritatis repellat,      velit neque sapiente, praesentium, quasi voluptatem.</span>
                <span>Pariatur sit, quam sapiente repellendus, vero provident quos libero, sequi quidem illum ipsa mollitia incidunt temporibus consequuntur aut doloremque earum voluptatibus eligendi natus a doloribus quas ex culpa numquam. Architecto.</span>
                <span>Voluptatum minima necessitatibus vero eum animi accusantium nam commodi in amet reprehenderit! Praesentium voluptate aspernatur facere sunt, aliquid officia iusto mollitia? Possimus, quis unde dicta nobis sunt, minus? Ut, nulla.</span>
            </p>
            <hr>
            <p class="h2">Nuestra visión</p>
            <p class="lead text-justify">
                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id praesentium cumque ad necessitatibus repudiandae, tempora itaque illo? Iusto fugit, optio dolor vero veritatis repellat,      velit neque sapiente, praesentium, quasi voluptatem.</span>
                <span>Pariatur sit, quam sapiente repellendus, vero provident quos libero, sequi quidem illum ipsa mollitia incidunt temporibus consequuntur aut doloremque earum voluptatibus eligendi natus a doloribus quas ex culpa numquam. Architecto.</span>
                <span>Voluptatum minima necessitatibus vero eum animi accusantium nam commodi in amet reprehenderit! Praesentium voluptate aspernatur facere sunt, aliquid officia iusto mollitia? Possimus, quis unde dicta nobis sunt, minus? Ut, nulla.</span>
            </p>
            <hr>
            <p class="h2">Nuestro misión</p>
            <p class="lead text-justify">
                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id praesentium cumque ad necessitatibus repudiandae, tempora itaque illo? Iusto fugit, optio dolor vero veritatis repellat,      velit neque sapiente, praesentium, quasi voluptatem.</span>
                <span>Pariatur sit, quam sapiente repellendus, vero provident quos libero, sequi quidem illum ipsa mollitia incidunt temporibus consequuntur aut doloremque earum voluptatibus eligendi natus a doloribus quas ex culpa numquam. Architecto.</span>
                <span>Voluptatum minima necessitatibus vero eum animi accusantium nam commodi in amet reprehenderit! Praesentium voluptate aspernatur facere sunt, aliquid officia iusto mollitia? Possimus, quis unde dicta nobis sunt, minus? Ut, nulla.</span>
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
