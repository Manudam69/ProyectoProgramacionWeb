<%-- 
    Document   : carrito
    Created on : Nov 22, 2018, 6:27:23 PM
    Author     : MD
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Producto"%>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de compras</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/index.css">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Saira" rel="stylesheet">
        <jsp:useBean id="objConn" class="mySql.MySqlConn"/>
        <script src="./js/AjaxFunciones.js"></script> 
        <link rel="icon" type="image/png" href="images/logo.png">
        <style> 
            body{ background-color:<%=Fondo%>;<%//Al recuperar los colores se ingresan en el style de la pagina%>
                  color:<%=FondoLetra%>;}
            </style>
        </head>
        <body>
            <%
                if (session.getAttribute("usuario") == null) {
            %>
            <jsp:forward page="Login.jsp">
                <jsp:param name="error" value="Necesitas estar con una sesion activa para comprar"/>
            </jsp:forward>
            <%}%>
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
                    <form class="form-inline my-2 my-lg-0" action="Login.jsp" method="post">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Iniciar Sesión</button>
                    </form>
                    <%
                    } else {
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
                    <a href="./carrito.jsp"><img src="images/carrito.png" class="img-fluid mb-3 mr-2" alt="Algo pasa" width="50"></a>
                    <a id="NomUsuario" style="color: black"><%=request.getSession().getAttribute("usr")%></a> &nbsp; &nbsp;
                    <a href="./Nocturno.jsp"><img src="images/night_mode.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Normal.jsp"><img src="images/File_Alt.png" class="img-fluid mb-3 mr-2" alt="Modo Nocturno" width="20"></a>
                    <a href="./Invierno.jsp"><img src="images/snowflake.png" class="img-fluid mb-3 mr-3" alt="Modo Nocturno" width="20"></a>
                        <%}%>  
                    <form class="form-inline my-2 my-lg-0" action="Cerrarsesion.jsp" method="post">                       
                        <button class="btn btn  my-2 my-sm-0" type="submit" id="sesion">Cerrar Sesión</button>
                    </form>

                    <%}%>
                </div>
            </nav>
        </header>

        <form action="./Address.jsp" method="post">
            <div class="container mt-5 pt-5" id="TablaAct">
                <div class="text-center">
                    <img src="images/carrito.png" class="img-fluid mb-3 mr-3 text-center" alt="Algo pasa" width="50">
                    <p class="h1 ">CARRITO DE COMPRA</p>
                </div>

                <%
                    HttpSession sesion = request.getSession(true);

                    ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");

                    if (lista_c != null) {
                        //Variables para mostrar el carrito
                        int subtotalAPagar = 0;
                        int cantidadP = 0;
                        int precio_p = 0, existencias = 0, id_P = 0;
                        String nombre_P = "", descrip = "";
                        Boolean agregado = false;

                        //Variables para las coincidencias
                        Boolean prod_enc = false;
                        int cantidad_p = 0;

                        String id_pRec = request.getParameter("id_producto");

                        if (id_pRec != null) {
                            int id_p = Integer.parseInt(id_pRec);

                            String cantidad_pRec = request.getParameter("cantidad");
                            cantidad_p = Integer.parseInt(cantidad_pRec);
                            request.setAttribute("cantidad", "0");

                            //SQL Query para recuperar los valores del producto de la BD
                            String query = "select * from farolito.productos where id_p = '" + id_pRec + "'";
                            objConn.Consult(query);

                            precio_p = objConn.rs.getInt(2);
                            //Si se cambia a float el precio sería cambiar a objConn.rs.getFloat(2)
                            //Tambien se tendría que redondear con math.round(subtotal a pagar)
                            existencias = objConn.rs.getInt(3);
                            nombre_P = objConn.rs.getString(4);
                            descrip = objConn.rs.getString(5);

                            Producto p = new Producto(id_p, precio_p, existencias, nombre_P, descrip);

                            //Añadir mas cantidad a productos
                            for (int j = 0; j < lista_c.size(); j++) {
                                ProductoCarrito aux = lista_c.get(j); //Lo que se va a comparar si esta 
                                Producto Norm = aux.getP();
                                if (id_p == Norm.getId()) {
                                    int cAux = aux.getCantidad() + cantidad_p;
                                    aux.setCantidad(cAux);
                                    lista_c.add(j, aux);
                                    lista_c.remove(j);
                                    prod_enc = true;
                                    break;
                                }
                            }

                            if (prod_enc == false) {
                                lista_c.add(new ProductoCarrito(p, cantidad_p));
                            }
                            session.setAttribute("listacom", lista_c); //Variable de session para la lista de compras
                            response.sendRedirect("carrito.jsp");  //Variable que redirige al carrito.jsp pero sin los valores de la cantidad
                        }

                %>  


                <%                    if (lista_c.size() > 0) {
                        for (int i = 0; i < lista_c.size(); i++) {
                            ProductoCarrito aux = lista_c.get(i);
                            Producto Norm = aux.getP();

                            id_P = Norm.getId();
                            nombre_P = Norm.getNombre();
                            precio_p = Norm.getPrecio();
                            descrip = Norm.getDescrip();
                            cantidad_p = lista_c.get(i).getCantidad();

                            int cuenta = cantidad_p * precio_p;
                            subtotalAPagar += cuenta;

                %>
                <div class="media mt-5">
                    <img class="d-flex mr-3" src="imagen.jsp?id=<%=id_P%>" alt="Generic placeholder image" width="10%">
                    <div class="media-body lead">
                        <p class="h3 mt-0"><%=nombre_P%></p>    
                        <p>Precio Unitario: $<%=precio_p%></p>                    
                        <p><%=descrip%></p>                       
                        <p>Cantidad: <%=cantidad_p%></p>
                    </div>
                </div>
                <div class="text-right">
                    <button type="button" class="btn btn-danger" onclick="eliminarProd(<%=id_P%>);">Eliminar del carrito</button>
                </div>

                <%     }
                } else {
                %>
                <p class="h2 text-center mt-5 pt-5">TU CARRITO ESTA VACÍO</p>
                <p class="lead text-center mb-5"><a href="./index.jsp">Comprar ahora.</a></p>

                <%}

                    //Cantidad de productos en el carrito
                    int cantCar = 0;
                    for (int i = 0; i < lista_c.size(); i++) {
                        cantCar += lista_c.get(i).getCantidad();
                    }

                %>  
                <hr>
                <br>
                <%if (lista_c.size() > 0) {%>
                <div class="row mb-5">
                    <div class="col-md-12 text-right"><p class="lead">Cantidad de productos: <%=cantCar%> </p></div>
                    <div class="col-md-12 text-right"><p class="lead">Subtotal: $ <%=Math.round(subtotalAPagar * 100) / 100%> MXN</p></div>
                    <%
                        String subtotal = Integer.toString(subtotalAPagar);
                        request.getSession().setAttribute("subtotal", subtotal);
                    %> <!--Variable de sesion para el subtotal -->
                    <div class="col-md-12 text-right"><button type="submit" class="btn btn-success">Proceder al pago</button></div>              
                </div>   
                <%}
                    } else { %>
                <p class="h2 text-center mt-5 pt-5">TU CARRITO ESTA VACÍO</p>
                <!--Regresa a la pagina anterior -->
                <p class="lead text-center mb-5"><a href="./index.jsp">Comprar ahora.</a></p>
                <%} %>
            </div>

        </form>
        <%
            if (request.getSession().getAttribute("IdProd") != null) {
                request.getSession().setAttribute("IdProd", null);
            }
        %>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
