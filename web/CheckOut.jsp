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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

            objConn.Consult(queryUs);

            objConn.rs.beforeFirst();
            while (objConn.rs.next()) {
                if (usuarioSesion.equals(objConn.rs.getString(2))) {
                    correoUs = objConn.rs.getString(4);
                    break;
                }
            }

            /*
            //No obligatorios
            String correo = request.getParameter("correo");
            String dir2 = request.getParameter("direccion2");
             */
            //opcionales en tarjetas o paypal
            //Debito y credito
            String NombTar = request.getParameter("TarjetaNom");
            String NumTarjR = request.getParameter("TarjetaNum");

            /*
            //Paypal
            String CorreoPay = request.getParameter("CorreoPay");
             */

        %>

        <div>
            <h3>Gracias por tu compra: <%=usuario%> </h3>
            <h4>Numero de pedido: <%=numPedido%> </h4>


            <h4>DATOS DEL ENVÍO</h4>
            <p>Express (1-2 días habiles)</p>
            <p>Direccion: <%=dir1%></p>
            <p><%=estado%>,<%=pais%>.CP: <%=cp%>.</p> 
            <p>Correo: <%=correoUs%> </p>
            <br>

            <h4>Resumen del pedido</h4>
            <p>Productos comprados: </p>  
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
            <div class="media mt-5">
                <img class="d-flex mr-3" src="imagen.jsp?id=<%=id%>" alt="Generic placeholder image" width="10%">
                <div class="media-body lead">
                    <p class="h3 mt-0"><%=nombre%></p>    
                    <p>Precio Unitario: $<%=precio_p%></p>                    
                    <p><%=descrip%></p>                       
                    <p>Cantidad: <%=cantidad%></p>
                </div>
            </div>

            <%
                }
            %>   
            <br>
            <p>Subtotal: <%=subtotal%></p>
            <p>Envio: <%=PreciosF.get(1).toString()%></p> 
            <p>Impuestos: <%=PreciosF.get(0).toString()%></p>
            <p>Total: <%=PreciosF.get(2).toString()%></p><br> 

            <a href="./index.jsp">Seguir Comprando.</a>

            <pre>  
              ¿Necesitas asistencia? Contáctanos. Haremos todo lo posible para asegurarnos que disfrutes tu experiencia con nosotros.
              Llámanos: 123-456-7890
              Escríbenos un email: StoreFarolito@gmail.com
            </pre>

        </div>

        <%
            //Envio del correo  
        

        %>

        <%  //Esto va al final
            //Aqui cambian las existencia de los productos
            //Esto reinicia la lista de los precios y la lista del carrito
            //Aqui va el cambiar existencias
            if (PreciosF.size() == 3) {
                PreciosF = null;
                lista_c = null;

                request.getSession().setAttribute("listacom", lista_c);
                request.getSession().setAttribute("lista_precios", PreciosF);
            }

        %>   


    </body>
</html>
