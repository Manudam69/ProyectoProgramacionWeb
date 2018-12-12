<%-- 
    Document   : pruebasProd
    Created on : 12/12/2018, 01:04:50 PM
    Author     : Jafet
--%>

<%@page import="clases.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.ProductoCarrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>


        <%
            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
            int id = 0;
            int compra = 0;

            int ex = 0;

            for (int j = 0; j < lista_c.size(); j++) {
                ProductoCarrito aux = lista_c.get(j); //Lo que se va a comparar si esta 
                Producto Norm = aux.getP();
                id = Norm.getId();
                compra = lista_c.get(j).getCantidad();
                if (id == Norm.getId()) {
                    objConn.Consultar();
                    objConn.rs.beforeFirst();
                    while (objConn.rs.next()) {

                        if (objConn.rs.getInt(1) == id) {
                            ex = objConn.rs.getInt(3);
                            break;
                        }

                    }
                    break;
                }
            }

            out.println("<br>1 ->" + ex);
            ex = ex - compra;

            objConn.Actualiza(ex, id);
            out.println("<br> 2 ->" + ex);

        %>
    </body>
</html>
