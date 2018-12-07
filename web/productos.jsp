<%-- 
    Document   : CompraC
    Created on : 15/11/2018, 11:01:32 AM
    Author     : Rick
--%>

<%@page import="clases.ProductoCarrito"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/CompraCarrito.css"/>
        <jsp:useBean id="objConn" class="mySql.MySqlConn"/>

        <title>PAGINAS COMPRAS</title>
    </head>
    <body>
        <h1>¿¡BUEN FIN!?</h1>
        <%
            String numeroProd = "";
            Producto aux = new Producto();
            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
            ArrayList<Producto> lista_p = (ArrayList<Producto>) request.getSession().getAttribute("listap");
            
            //Creacion e instanciacion de las listas de compras y mostrar
            if (lista_c == null) {
                /*Solo se ejecutará una vez esta parte */
                lista_c = new ArrayList<ProductoCarrito>();
                lista_p = new ArrayList<Producto>();
                /* Agrego al arraylist */
                request.getSession().setAttribute("listacom", lista_c);
                request.getSession().setAttribute("listap", lista_p);
                /*Se va actualizar la lista */
            }
            int id_p = 0, precio_p = 0, existencias = 0;
            String nombre_p = "", imagen_p = "", descrip = "";
            int numP = 0;
            String desc_p = "";
            //SQL Query para recuperar los valores de una tabla
            String query = "select * from farolito.productos";
            objConn.Consult(query);
        %>
        <!--Mostrar carrito-->
         <p><button id="BCarrito" type="button" name="carrito" onclick="window.location.href = 'carrito.jsp';">
                <%
                int cantCar = 0;
                  for (int i = 0; i < lista_c.size(); i++) {
                       cantCar += lista_c.get(i).getCantidad();
                    }
                 %>   
                <i class="fa fa-shopping-cart" aria-hidden="true"></i> <%=cantCar%></button></p>    
                
        <form action="producto.jsp" method="post">
            <table>
                <thead>PRODUCTOS DISPONIBLES</thead>
                <tbody>
                    <!--Scriplet para mostrar -->
                    <%
                        objConn.rs.beforeFirst();
                        while (objConn.rs.next()) {
                            id_p = objConn.rs.getInt(1);
                            precio_p = objConn.rs.getInt(2);
                            existencias = objConn.rs.getInt(3);
                            nombre_p = objConn.rs.getString(4);
                            descrip = objConn.rs.getString(5);
                            numeroProd = Integer.toString(numP);
                            numP++;
                            aux = new Producto(id_p, precio_p, existencias, nombre_p, descrip);

                            if (existencias != 0) {
                                lista_p.add(aux);

                    %>    
                    <tr>
                        <td><button type="submit" name="id_producto" value="<%=id_p%>" style="background-color: transparent; border: solid transparent 1px;">
                                <img src="imagen.jsp?id=<%=id_p%>" alt="errorcarga.jpg"></button></td>
                    </tr>
                </tbody>
                <%
                        }
                    }

                %>
            </table>
        </form>  
    </body>
</html>

