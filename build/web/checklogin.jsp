<%-- 
    Document   : checklogin
    Created on : 22/11/2018, 10:17:28 AM
    Author     : César
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<%@page import="clases.CryptWithMD5"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<% int conta = 0;%>
<%
    String usuario = "";
    String pass = "";
    String usuarioBD = "";
    String passBD = "";
    String admin = "";
    CryptWithMD5 obj = new CryptWithMD5();
    String query = "select * from farolito.usuarios";
    objConn.Consult(query);
    boolean contra = false;
    boolean usr = false;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        if (request.getParameter("usr") != null) {
            usuario = request.getParameter("usr");
        }
        if (request.getParameter("pass") != null) {
            pass = request.getParameter("pass");
        }
        pass = obj.cryptWithMD5(pass);
        objConn.rs.beforeFirst();

        while (objConn.rs.next()) {
            usuarioBD = objConn.rs.getString(2);
            passBD = objConn.rs.getString(3);
            admin = objConn.rs.getString(8);

            if (usuario.equals(usuarioBD) && pass.equals(passBD)) {
                HttpSession sesionOk = request.getSession();
                sesionOk.setAttribute("usuario", usuario);
                if (admin.equals("1")) {
                    sesionOk.setAttribute("admin", "true");
                } else {
                    sesionOk.setAttribute("admin", "false");
                }
    %>
    <jsp:forward page="index.jsp"/>
    <%
                break;
            } else if (usuario.equals(usuarioBD)) {
                contra = false;
                usr = true;
                conta++;
                break;
            }
        }
        if (!contra && usr) {
            if (conta > 3) {
                conta = 0;
            }
            request.setAttribute("cnt", conta);
    %>   
    <jsp:forward page="Login.jsp">
        <jsp:param name="error" value="Contraseña incorrecta.<br>Vuelve a intentarlo."/>
        <jsp:param name="cnt" value="${cnt}"/>
    </jsp:forward>
    <%} else if (!contra && !usr) {
    %>
    <jsp:forward page="Login.jsp">
        <jsp:param name="error" value="Usuario no encontrado.<br>Vuelve a intentarlo."/>
    </jsp:forward>
    <%
        }

    %>

</html>
