<%-- 
    Document   : CambiosBD
    Created on : 8/12/2018, 01:58:45 PM
    Author     : César
--%>

<%@page import="mySql.MySqlConn"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    MySqlConn obj = new MySqlConn();        
    FileInputStream fis;
            String producto = request.getParameter("productoCambio");
            String nuevoarch = request.getParameter("arch");
            String nuevonombre= request.getParameter("nombre");
            String nuevadesc=request.getParameter("descripcion");
            String precioS=request.getParameter("precio");
            String existenciaS=request.getParameter("existencia");
            int precio=Integer.parseInt(precioS);
            int existencia=Integer.parseInt(existenciaS);
             
            String nuevotipo=request.getParameter("tipo");
            if(nuevoarch == null){//no tengo idea del porque toma null asi que el if le pone algo a ese pedo
                nuevoarch="dummy"; 
                producto="";
                nuevoarch="";
                nuevonombre="";
                nuevadesc="";
                precio=0;
                existencia=0;
                
            }else{
                nuevoarch = request.getParameter("arch");
                 File image = new File("C:/Users/Ramiro/Downloads/"+nuevoarch);
                fis = new FileInputStream(image);
             obj.Cambios(producto, precio, existencia, nuevonombre,nuevadesc,fis,image,nuevotipo);
            }
%>
 <jsp:forward page="Cambios_Producto.jsp"/>