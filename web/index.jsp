<%-- 
    Document   : index
    Created on : Nov 18, 2018, 7:19:11 PM
    Author     : MD
--%>

<%@page import="clases.Promos"%>
<%@page import="clases.Producto"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.ProductoCarrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<%!int numAccesos = 0;%>
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
        <style> 
            body{ background-color:<%=Fondo%>;<%//Al recuperar los colores se ingresan en el style de la pagina%>
                  color:<%=FondoLetra%>;}
            .imagen{
                width: 213px;
                height: 300px;
            }
            td{
                color: black;
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
                        <%  if (session.getAttribute("usuario") == null) {
                            } else {
                                if (session.getAttribute("admin").equals("true")) {%>
                        <li class="nav-item">
                            <a class="nav-link" href="Alta_Productos.jsp">Altas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Bajas_Producto.jsp">Bajas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Cambios_Producto.jsp">Cambios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./Ayuda.jsp">Graficas</a>
                        </li>
                        <%}
                            }%>

                    </ul>
                    <%
                        if (session.getAttribute("usuario") == null) {
                    %>
                    <form class="form-inline my-2 my-lg-0" action="Login.jsp">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Iniciar Sesión</button>
                    </form>
                    <%
                    } else if (session.getAttribute("admin").equals("true")) {
                    %>
                    <%   if (request.getSession().getAttribute("usr") != null) {
                            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
                            //Cantidad de productos en el carrito
                            int cantCar = 0;
                            for (int i = 0; i < lista_c.size(); i++) {
                                cantCar += lista_c.get(i).getCantidad();
                            }%> 

                    <span class="badge badge-secondary badge-pill"><%=cantCar%></span>
                    <%}%>

                    <%if (request.getSession().getAttribute("usr") == null) {%>
                    <a id="NomUsuario" style="color: black">Admin</a> &nbsp; &nbsp;
                    <a href="./Nocturno.jsp"><img src="images/night_mode.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Normal.jsp"><img src="images/File_Alt.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Invierno.jsp"><img src="images/snowflake.png" class="img-fluid mb-3 mr-3" alt="Modo Nocturno" width="20"></a>
                        <%} else {%>
                    <a href="./Nocturno.jsp"><img src="images/night_mode.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Normal.jsp"><img src="images/File_Alt.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Invierno.jsp"><img src="images/snowflake.png" class="img-fluid mb-3 mr-3" alt="Modo Nocturno" width="20"></a>
                    <a id="NomUsuario" style="color: black"><%=request.getSession().getAttribute("usr")%></a> &nbsp; &nbsp;
                    <%}%>
                    <form class="form-inline my-2 my-lg-0" action="Cerrarsesion.jsp">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Cerrar Sesión</button>
                    </form>

                    <%} else {

                        ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
                        ArrayList<Promos> descuentos = (ArrayList<Promos>) request.getSession().getAttribute("listapromos");

                        if (lista_c == null) {
                            /*Solo se ejecutará una vez esta parte */
                            lista_c = new ArrayList<ProductoCarrito>();
                            descuentos = new ArrayList<Promos>();
                            /* Agrego al arraylist */

                            request.getSession().setAttribute("listacom", lista_c);

                            descuentos.add(new Promos("FUTURE", "2018-12-31", 10));
                            descuentos.add(new Promos("FAROLITO-MERCY", "2019-2-14", 25));
                            descuentos.add(new Promos("25-OFF", "2020-12-10", 25));
                            descuentos.add(new Promos("LA-SEGUNDA", "2020-12-10", 25));
                            request.getSession().setAttribute("listapromos", descuentos);
                        }
                    %>

                    <%
                        //Cantidad de productos en el carrito
                        int cantCar = 0;
                        for (int i = 0; i < lista_c.size(); i++) {
                            cantCar += lista_c.get(i).getCantidad();
                        }%> 

                    <span class="badge badge-secondary badge-pill"><%=cantCar%></span>
                    <a href="./carrito.jsp"><img src="images/carrito.png" class="img-fluid mb-3 mr-2" alt="Algo pasa" width="50"></a>
                        <%
                            if (request.getParameter("usr") != null) {
                                request.getSession().setAttribute("usr", request.getParameter("usr"));
                            }
                        %>   
                    <a id="NomUsuario" style="color: black"><%=request.getSession().getAttribute("usr")%></a> &nbsp; &nbsp;
                    <a href="./Nocturno.jsp"><img src="images/night_mode.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Normal.jsp"><img src="images/File_Alt.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Invierno.jsp"><img src="images/snowflake.png" class="img-fluid mb-3 mr-3" alt="Modo Nocturno" width="20"></a>

                    <%
                        if (request.getSession().getAttribute("Mueve") != null) {
                            request.getSession().setAttribute("Mueve", null);
                    %>
                    <script>
                        window.location.href = "index.jsp";
                    </script>
                    <%   }
                    %> 

                    <form class="form-inline my-2 my-lg-0" action="Cerrarsesion.jsp">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Cerrar Sesión</button>
                    </form>
                    <%}%>
                </div>
            </nav>
        </header>

        <div class="bd-example mt-5 mb-0 pt-5">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
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
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/slide3.jpg" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Desde un 25% de descuento</h3>
                            <%
                                Vector v = new Vector();

                                v.add("FUTURE");
                                v.add("FAROLITO-MERCY");
                                v.add("25-OFF");
                                Collections.shuffle(v);

                            %>
                            <p><%=v.elementAt(0)%></p>
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
                    <p class="text-justify">Dentro de la linea blanca encontraras los mejores aparatos para tu hogar y tu familia al mejor precio, ofrecemos una amplia varidad en nuestro catalogo para todos los gustos y necesidades.</p>
                    <p><a class="btn btn-secondary" href="./LineaBlanca.jsp" role="button">Ver más &raquo;</a></p>
                </div>

                <div class="col-lg-6">
                    <img class="rounded-circle" src="images/celular.jpg" alt="Generic placeholder image" width="140" height="140">
                    <h2>Electrónicos</h2>
                    <p class="text-justify">Actualiza tus aparatos del diario vivir con los modelos mas actualizados de la actualidad, renueva tu SmarthPhone con los mejores modelos y con los sistemas operativos mas actualizado del momento.</p>
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


        <div class="container" style=" background-color:<%=Fondo%>; color:<%=FondoLetra%>; border-radius: 0px; border: transparent 1px solid;">
            <%
                String numeroProd = "";
                Producto aux = new Producto();
                ArrayList<Producto> lista_p = (ArrayList<Producto>) request.getSession().getAttribute("listap");

                //Creacion e instanciacion de las listas de compras y mostrar
                if (lista_p == null) {
                    lista_p = new ArrayList<Producto>();
                    request.getSession().setAttribute("listap", lista_p);
                    /*Se va actualizar la lista */
                }
                int id = 0, precio = 0, existencias = 0;
                String nombre = "", descrip = "", tipo = "";
                int numP = 0;
                String query1 = "select * from farolito.productos";
                objConn.Consult(query1);

            %>
            <div class="mt-5 mb-5 row container-fluid"></div>
            <div class="bg mt-0 mb-0">
                <div id="accordion" role="tablist">

                    <div class="card" style=" background-color:<%=Fondo%>; color:<%=FondoLetra%>; border-radius: 0px; border: transparent 1px solid;">
                        <p class="h2 text-center " style=" color:red;">¡Oferta!</p>
                        <div id="collapseTwo" class="collapse bg-light" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="card-body text-muted">
                                <div class="list-group">

                                </div>
                            </div>
                        </div>
                    </div>
                    <form action="producto.jsp" method="post">
                        <table><%
                            objConn.rs.beforeFirst();
                            int random = (int) (Math.random() * (12 - 9) + 9);
                            for (int i = 0; i < random; i++) {
                                objConn.rs.next();
                            }

                            id = objConn.rs.getInt(1);
                            precio = objConn.rs.getInt(2);
                            existencias = objConn.rs.getInt(3);
                            nombre = objConn.rs.getString(4);
                            descrip = objConn.rs.getString(5);
                            tipo = objConn.rs.getString(7);
                            numeroProd = Integer.toString(numP);
                            numP++;
                            aux = new Producto(id, precio, existencias, nombre, descrip);

                            if (tipo.equals("Oferta") && existencias != 0) {
                                lista_p.add(aux);
                            %>
                            <tr>
                                <td style="width: 25%;color:<%=FondoLetra%>;"><button style="background-color: transparent; border: solid transparent 1px;" name="producto" value="<%=id%>"><img src="imagen.jsp?id=<%=id%>" alt="<%=nombre%>.jpg" class="img-fluid"></button></td>
                                <td style="width: 5%;color:<%=FondoLetra%>;"><%=nombre%></td>
                                <td style="width: 40%;color:<%=FondoLetra%>;"><%=descrip%></td>
                                <td align="center" style="width: 10%; color: green;">$ <%=precio%></td>
                                <td align="center" style="width: 5%;color: red;">Solo quedan: <%=existencias%> disponibles</td>
                            </tr>
                            <%
                                }

                            %>
                        </table>
                    </form>
                </div> 
            </div>  
        </div>

        <footer class="footer shadow-lg pb-2 mt-5">
            <%                String query = "select * from farolito.visitas";
                objConn.Consult(query);
                objConn.rs.beforeFirst();
                int contadorVista = 0;
                while (objConn.rs.next()) {
                    contadorVista = objConn.rs.getInt(2);
                }
                numAccesos = contadorVista;
            %>
            <%numAccesos++;%>




            <hr>
            <div class="row container-fluid mt-0">
                <div class="col-md-3 text-center">

                    <img src="images/logo.png" width="60" height="60" class="mb-0 mp-0 mt-0">


                </div>
                <div class="col-md-6 text-center">
                    <p><span class="badge badge-info"> 
                            Contador de visitas: <br>
                            <%=contadorVista%></span></p>
                    <a href="https://github.com/Manudam69" target="_blank"><img src="images/github.png" width="35" height="35" class="mb-0 mp-0  mr-2 mt-2 text-right" style="filter: invert(100)"></a>
                    <a href="https://twitter.com/farolitooficial?lang=es" target="_blank"><img src="images/twitter.png" width="35" height="35" class="mb-0 mp-0 mt-2 text-right" style="filter: invert(100)"></a>

                </div>
                <%
                    objConn.Contador(numAccesos);
                %>
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
