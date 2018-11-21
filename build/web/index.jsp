<%-- 
    Document   : index
    Created on : Nov 18, 2018, 7:19:11 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Inicio</title>
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
                        <li class="nav-item active">
                            <a class="nav-link" href="./index.jsp">Inicio<span class="sr-only">(current)</span></a>
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

        <div class="bd-example mt-5 mb-1 pt-5">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="images/slide1.jpg" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Electrónicos</h3>
                            <p>Computadoras y Celulares</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/slide2.jpg" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Electrodomésticos</h3>
                            <p>Linea blanca.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </div>
        <hr>
        <p class="h1 text-center mb-3" style="font-family: 'Saira', sans-serif;">DESCUBRE NUESTROS PRODUCTOS</p>

        <div class="container marketing" id="contenido">
            <div class="row text-center">
                <div class="col-lg-6">
                    <img class="rounded-circle" src="images/Refrigeradores.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2>Linea Blanca</h2>
                    <p class="text-justify">Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
                    <p><a class="btn btn-secondary" href="./LineaBlanca.jsp" role="button">Ver más &raquo;</a></p>
                </div>

                <div class="col-lg-6">
                    <img class="rounded-circle" src="images/celular.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2>Electrónicos</h2>
                    <p class="text-justify">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
                    <p><a class="btn btn-secondary" href="./Electronicos.jsp" role="button">Ver más &raquo;</a></p>
                </div>
            </div>
            <hr class="featurette-divider">
            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading text-left">Descubre el nuevo Iphone XS</h2>
                    <p class="lead text-justify">Presentamos el iPhone Xs con dos tamaños de pantalla Super Retina, incluida la pantalla más grande en un iPhone hasta ahora. Face ID aún más rápido.
                        El chip más inteligente y potente en un smartphone. Y un sistema de cámara dual revolucionario con Control de Profundidad. El iPhone XS tiene todo lo que te gusta del iPhone, llevado al  extremo.</p>
                </div>
                <div class="col-md-5">
                    <img class="rounded mx-auto d-block" src="images/XS.jpg" alt="Generic placeholder image" width="300">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Las mejores Laptops del mercado</h2>
                    <p class="lead text-justify">
                        Donde deja de ser un simple juego para convertirse en un videojuego. <br>
                        Laptop de 15 pulgadas ideal para los aficionados a los videojuegos. 
                        Cuenta con gráficos realistas NVIDIA® GeForce®, un teclado de tamaño completo y un 
                        procesador potente para obtener un rendimiento superior de los juegos.
                    </p>
                </div>
                <div class="col-md-5 order-md-1">
                    <img class="featurette-image img-fluid mx-auto" width="300" src="images/laptop.png" alt="Generic placeholder image">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">Refrigeradores de alta calidad</h2>
                    <p class="lead text-justify">
                        Conoce la sofisticada marca de refrigerador Samsung de 14 pies cúbicos, con sistema de refrigeración Twing 
                        cooling Plus el cual te permite mantener una mejor conservación de alimentos..</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-fluid mx-auto text-center" width="200" src="images/refrigerador.png" alt="Generic placeholder image">
                </div>
            </div>
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
