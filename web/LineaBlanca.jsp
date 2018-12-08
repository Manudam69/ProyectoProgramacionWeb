<%-- 
    Document   : LineaBlanca
    Created on : Nov 18, 2018, 7:22:00 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
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
        <%
            String query = "select * from farolito.productos";
            objConn.Consult(query);
            int id = 0, precio = 0, existencias = 0;
            String nombre = "", descrip = "", tipo = "";
            objConn.rs.beforeFirst();

        %>
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
                                <%                                    
                                    while (objConn.rs.next()) {
                                        id = objConn.rs.getInt(1);
                                        precio = objConn.rs.getInt(2);
                                        existencias = objConn.rs.getInt(3);
                                        nombre = objConn.rs.getString(4);
                                        descrip = objConn.rs.getString(5);
                                        tipo = objConn.rs.getString(7);
                                        if (tipo.equals("Linea Blanca")) {
                                %>
                                <a href="#!" class="list-group-item list-group-item-action"><img src="imagen.jsp?id=<%=id%>" alt="<%=nombre%>.jpg"></a>
                                <%
                                        }
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                    jkdshfkjsdhfkjsd        
            </div> 
        </div>
                            
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
