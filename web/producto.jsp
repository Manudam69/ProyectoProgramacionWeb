<%-- 
    Document   : producto
    Created on : Nov 19, 2018, 12:15:26 PM
    Author     : MD
--%>

<%@page import="clases.Producto"%>
<%@page import="clases.ProductoCarrito"%>
<%@page import="java.util.ArrayList"%>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/producto.css"/>
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Saira" rel="stylesheet">
        <link rel="icon" type="image/png" href="images/logo.png">
        <script src="./js/producto.js"></script> 
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
                        <li class="nav-item dropdown active">
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

        <div class="container mt-5 pt-5">

         <%
           ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
           ArrayList<Producto> lista_p = (ArrayList<Producto>) request.getSession().getAttribute("listap");
           
          String valorP = (String) request.getParameter("producto");
          int id_P = Integer.parseInt(valorP);
          
          String nombre="", descrip="";
          int precio=0;
          int existenciaAct=0;
             
          for (int i = 0; i < lista_p.size(); i++) {
             if(id_P  == lista_p.get(i).getId()){
                 nombre = lista_p.get(i).getNombre();
                 descrip = lista_p.get(i).getDescrip();
                 precio = lista_p.get(i).getPrecio();
                 existenciaAct = lista_p.get(i).getExistencia();
                 lista_p = null;
                 break;
              }
           }

         %>             
            <div class="row mt-3">
                <div class="col-lg-6 px-5">
                    <figure class="zoom img-fluid" onmousemove="zoom(event)" style="background-image: url(imagen.jsp?id=<%=id_P%>)">
                        <img src="imagen.jsp?id=<%=id_P%>" class="img-fluid" alt="Responsive image"/>
                    </figure>                    
                    <!--<img src="images/prueba.jpg" class="img-fluid mt-5 pt-5" alt="Responsive image" id="producto">-->
                </div>
      
                <div class="col-lg-6 mt-2">
                   
                    <p class="h2 text-left mt-1"><%=nombre%></p>
                    <p class="lead mt-3">Precio: $<%=precio%> MXN</p>
                    <form class="form-signin mx-auto mt-2" action="carrito.jsp" method="get">
                        <label for="cantidad" class="lead ">Cantidad: </label>
                        <select class="custom-select w-25 mb-1" name="cantidad"> 
                            
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                        <input type="hidden" name="id_producto" value="<%=id_P%>">  <!--Manda el id del producto escondido --> 
                        <br>
                        
                        <button class="btn btn-lg btn-primary btn-block mb-0 w-75 mt-5" type="submit">Agregar al carrito</button>
                    </form>

                    <ul class="mt-5">     
                        <p class="h4">Especificaciones</p>
                        <li class="text-justify lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                        <li class="text-justify lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                        <li class="text-justify lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                        <li class="text-justify lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                        
                    </ul>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-12 mt-3 p-3">
                    <p class="h3">DESCRIPCIÓN DEL PRODUCTO</p>
                    <p class="lead text-justify">
                        <span>
                           <%=descrip%>
                        </span>
                    </p>
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
        <script src="js/producto.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>   
    </body>
</html>
