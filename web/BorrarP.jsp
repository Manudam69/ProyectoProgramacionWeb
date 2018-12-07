<%-- 
    Document   : BorrarP
    Created on : 29/11/2018, 03:04:49 PM
    Author     : Rick
--%>

<%@page import="clases.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.ProductoCarrito"%>
<%@page import="clases.ProductoCarrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            //Variables recuperadas
            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
            String idP = request.getParameter("idElimina");
            int idBorrar = Integer.parseInt(idP);

            if (idP != null) {
                //Busca y elimina el producto con el id recibido     
                for (int i = 0; i < lista_c.size(); i++) {
                    ProductoCarrito aux = lista_c.get(i); //Lo que se va a comparar si esta 
                    Producto Norm = aux.getP();
                    if (idBorrar == Norm.getId()) {
                        lista_c.remove(i);
                        break;
                     }
                 }
        %>
               <jsp:forward page="carrito.jsp"/>
        <%
          } 
        %>   



    </body>
</html>
