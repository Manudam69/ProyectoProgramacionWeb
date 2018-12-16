<%-- 
    Document   : ReinicioListas
    Created on : 15/12/2018, 04:26:46 PM
    Author     : Rick
--%>

<%@page import="clases.ProductoCarrito"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Esto reinicia la lista de los precios y la lista del carrito
            ArrayList<Float> PreciosF = (ArrayList<Float>) request.getSession().getAttribute("lista_precios"); //Impuesto, gasto y total.
            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
            
           if (PreciosF.size() == 3) {
                PreciosF = null;
                lista_c = null;

                request.getSession().setAttribute("listacom", lista_c);
                request.getSession().setAttribute("lista_precios", PreciosF);
                
        %>        
           <jsp:forward page="index.jsp"/>      
        <%        
            }  
            
        %>
       
    </body>
</html>
