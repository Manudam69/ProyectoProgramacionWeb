<%-- 
    Document   : CheckOut
    Created on : 9/12/2018, 01:59:57 AM
    Author     : Rick
--%>

<%@page import="clases.Producto"%>
<%@page import="clases.ProductoCarrito"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nota de compra</title>
    </head>
    <body>

        <%
            ArrayList<Float> PreciosF = (ArrayList<Float>) request.getSession().getAttribute("lista_precios"); //Impuesto, gasto y total.
            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
        %>   


        <%
            //Aqui se muestra todo
            //Se recuperan los datos del address.jsp
            //Obligatorios 
            String nombres = request.getParameter("Nombres");
            String apellidos = request.getParameter("Apellidos");
            String usuario = request.getParameter("Usuario");
            String dir1 = request.getParameter("direccion1");
            String pais = request.getParameter("pais");  // MX/USA
            String estado = request.getParameter("estado");
            String cpR = request.getParameter("CP");
            int cp = Integer.parseInt(cpR);

            String subtotal = String.valueOf(request.getSession().getAttribute("subtotal"));

            int numPedido = (int) (Math.random() * 999999999) + 100000009;
            String usuarioSesion = String.valueOf(request.getSession().getAttribute("usuario"));
            String queryUs = "SELECT * FROM farolito.usuarios where Usuario = '" + usuarioSesion + "';";
            String correoUs = "";

            if (PreciosF != null) {
                objConn.Consult(queryUs);

                objConn.rs.beforeFirst();
                while (objConn.rs.next()) {
                    if (usuarioSesion.equals(objConn.rs.getString(2))) {
                        correoUs = objConn.rs.getString(4);
                        break;
                    }
                }


        %>
        

        <div class="container mt-5 pt-5 shadow mb-5">
            <p class="text-center h3">
                <a href="./index.jsp"><img src="images/logo.png" width="60" height="60" class="d-inline-block align-top mb-1"></a>
                <br> <%=nombres%> <%=apellidos%>, gracias por comprar con nosotros.</p>
            <p class="lead text-center">¡Esperamos verte nuevamente!</p>

            <div class="row">
                <div class="col-md-3 mt-5 lead">
                    <p class="text-right">Pedido num. </p>
                </div>
                <div class="col-md-7 mt-5 lead">
                    <p class="text-right"><%=numPedido%></p>
                </div>
            </div>
            <hr>
            <p class="lead text-center">DATOS DEL ENVÍO</p>
            <div class="row">
                <div class="col-md-12 mt-0 lead">

                    <p class="text-center">
                        Nombre: <%=nombres%> <%=apellidos%><br>
                        Tipo de envío: Express (1-2 días habiles)
                        <br> Dirección: <%=dir1%> <%=estado%>,<%=pais%>
                        <br> Codigo postal: <%=cp%>
                        <br> Correo electrónico: <%=correoUs%>
                    </p>
                </div>
            </div>
            <hr>
            <p class="lead text-center">RESUMEN DEL PEDIDO</p>
            <%
                for (int i = 0; i < lista_c.size(); i++) {
                    ProductoCarrito aux = lista_c.get(i);
                    Producto Norm = aux.getP();

                    int id = Norm.getId();
                    String nombre = Norm.getNombre();
                    int precio_p = Norm.getPrecio();
                    String descrip = Norm.getDescrip();
                    int cantidad = lista_c.get(i).getCantidad();

            %>

            <div class="row">
                <div class="col-md-3 lead">
                    <img src="imagen.jsp?id=<%=id%>" class="img-fluid w-50" alt="Responsive image">
                </div>
                <div class="col-md-7 lead">
                    <p class="text-left">
                        <%=nombre%><br>
                        Precio Unitario: $<%=precio_p%><br>
                        <%=descrip%><br>
                        Cantidad: <%=cantidad%>
                    </p>
                </div>
            </div>
            <%                            }
            %> 
            <hr>
            <div class="row">
                <div class="col-md-3 lead">

                </div>
                <div class="col-md-7 lead">
                    <p class="text-right">
                        Subtotal: <%=subtotal%>
                        <br> Envio: <%=PreciosF.get(1).toString()%>
                        <br> Impuestos: <%=PreciosF.get(0).toString()%>
                        <br> Total: <%=PreciosF.get(2).toString()%>
                    </p>
                </div>
            </div>
            <hr>
            <p class="text-center"><a href="./index.jsp">Seguir comprando</a></p>
            <p class="text-center text-muted">¿Necesitas asistencia? Contáctanos. Haremos todo lo posible para asegurarnos que disfrutes tu experiencia con nosotros. Llámanos: 123-456-7890
                <br>Escríbenos un email: StoreFarolito@gmail.com</p>
            <br>
        </div>

            <a href="./index.jsp" onclick="">Seguir Comprando.</a>

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
        <%
            //Envio del correo  


        %>

        <%  //Esto va al final
            //Aqui cambian las existencia de los productos
            //Esto reinicia la lista de los precios y la lista del carrito
            //Aqui va el cambiar 
            if (PreciosF.size() == 3) {
                PreciosF = null;
                lista_c = null;

                request.getSession().setAttribute("listacom", lista_c);
                request.getSession().setAttribute("lista_precios", PreciosF);
            }
        } else {

        %>    
        
         <div class="container mt-5 pt-5 shadow mb-5">
            <p class="text-center h3">
                <a href="./index.jsp"><img src="images/logo.png" width="60" height="60" class="d-inline-block align-top mb-1"></a>
                <br> <%=nombres%> <%=apellidos%>, gracias por comprar con nosotros.</p>
            <p class="lead text-center">Tu compra esta siendo procesada.</p>

            <div class="row">
                <div class="col-md-3 mt-5 lead">
                    <p class="text-right">Pedido num. </p>
                </div>
                <div class="col-md-7 mt-5 lead">
                    <p class="text-right"><%=numPedido%></p>
                </div>
            </div>
        
                <br><br><br><br>
                <a href="./index.jsp" onclick="">Seguir Comprando.</a>
                
                
        <%
            }
        %>   

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
