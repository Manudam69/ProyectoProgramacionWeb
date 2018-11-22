<%-- 
    Document   : AcercaDe
    Created on : Nov 18, 2018, 7:20:45 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta charset="UTF-8">
        <title>Acerca de nosotros</title>
        <link rel="stylesheet" href="css/index.css">
        <link rel="icon" type="image/png" href="images/logo.png">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
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
                        <li class="nav-item active">
                            <a class="nav-link" href="./AcercaDe.jsp">Acerca De<span class="sr-only">(current)</span></a>
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

        <img src="images/AcercaDe.jpg" class="img-fluid mt-5 pt-5" alt="Responsive image">
        <hr>

        <div class="container">
            <h4 class="text-center font-italic font-weight-bold mt-5">El farolito nuestra tienda en linea.</h4>
            <p class="text-justify">
                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, numquam libero nemo hic eligendi voluptatum animi ipsa. Dicta similique eveniet alias tenetur ipsum dolore iusto fugit, deleniti est qui, obcaecati.</span>
                <span>Non perspiciatis asperiores corporis quidem fugiat voluptatibus voluptates esse dolores, doloremque porro sit. Enim similique modi quae, officia at hic blanditiis cumque obcaecati ipsum magnam unde rem laboriosam minus dolorum.</span>
                <span>Ducimus eum, omnis vel, voluptate rerum amet explicabo nihil odio iure aperiam maiores modi id, repellat deserunt ipsa eveniet ullam est dignissimos saepe accusamus, culpa voluptatum minus ratione similique. Nulla!</span>
                <span>Culpa expedita cupiditate fugit officiis commodi tenetur totam magni id suscipit eaque veniam laudantium, quibusdam hic saepe corporis iste doloremque exercitationem! Aperiam nostrum nihil autem qui voluptas officiis vel ab.</span>
                <span>Deleniti nostrum architecto commodi mollitia odit culpa adipisci laborum, delectus, iure ducimus, eaque vitae nesciunt repudiandae veritatis. Repellat ipsam voluptatum, doloribus. Necessitatibus ullam quia, quas, libero ut vero porro tenetur!</span>
            </p>

        </div>

        <div class="container marketing mb-4">
            <hr>
            <div class="row text-center mt-4">
                <div class="col-lg-4">
                    <img class="rounded-circle" src="images/Manuel_Alonso.png" alt="Generic placeholder image" width="140" height="140">
                    <h2>Manuel David Alonso Muñoz</h2>
                    <p class="text-justify">Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>

                </div>

                <div class="col-lg-4">
                    <img class="rounded-circle" src="images/Cesar.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2>Cesar Arturo Rea Reyes</h2>
                    <p class="text-justify">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>

                </div>
                <div class="col-lg-4">
                    <img class="rounded-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
                    <h2>Héctor Fernando Diaz Rosales</h2>
                    <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur numquam magnam molestias temporibus, eligendi alias veniam necessitatibus architecto voluptate iusto rerum animi dicta officia illo perferendis tenetur distinctio. Est, veritatis.</p>

                </div>
            </div>
            <div class="row text-center mt-3">
                <div class="col-lg-6">
                    <img class="rounded-circle" src="images/Ricardo.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2>Ricardo Enrique Solis Herrera</h2>
                    <p class="text-justify">Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>

                </div>

                <div class="col-lg-6">
                    <img class="rounded-circle" src="images/Jafet.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2>David Jafet Acevedo Jauregui</h2>
                    <p class="text-justify">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                </div>
            </div>
        </div>
        
        <footer class="footer shadow-lg pb-2 mt-3">
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
