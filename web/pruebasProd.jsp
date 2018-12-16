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
        <%
            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
            int id = 0;
            int compra = 0;
            int ex = 0;
            int j = 0;
         while (j < lista_c.size()) {
                ProductoCarrito aux = lista_c.get(j); //Lo que se va a comparar si esta 
                Producto Norm = aux.getP();
                id = Norm.getId();
                compra = lista_c.get(j).getCantidad();
                objConn.Consultar();
                objConn.rs.beforeFirst();
                while (objConn.rs.next()) {
                    if (objConn.rs.getInt(1) == id) {
                        ex = objConn.rs.getInt(3);
                        break;
                    }
                }
                if (!lista_c.isEmpty()) {
                    ex = ex - compra;
                    String query = "update farolito.productos set existencias='"+ex+"'"+" where id_p='"+id+"';";
                    objConn.Update(query);
                    
                    j++;

                } else {
                    
                    break;
                }

            }
        %>
        <jsp:forward page="ReinicioListas.jsp"/>
    </body>
</html>
