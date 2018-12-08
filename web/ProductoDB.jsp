<%-- 
    Document   : ProductoDB
    Created on : 8/12/2018, 11:28:00 AM
    Author     : César
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
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
            String parameter = request.getParameter("id");
            int id_p = Integer.parseInt(parameter);
            parameter = request.getParameter("precio");
            int precio = Integer.parseInt(parameter);
            String imagen = request.getParameter("file");
            File image= new File("C:/Users/Ramiro/Downloads/"+imagen);
            FileInputStream fis= new FileInputStream(image);
            parameter= request.getParameter("existencia");
            int existencia = Integer.parseInt(parameter);
            String nombre = request.getParameter("nombre");
            String descripcion=request.getParameter("descripcion");
            String tipo=request.getParameter("tipo");
            objConn.add(id_p, precio, existencia, nombre, descripcion, fis, image, tipo);
            
        %>
        <jsp:forward page="Alta_Productos.jsp"/>
    </body>
</html>
