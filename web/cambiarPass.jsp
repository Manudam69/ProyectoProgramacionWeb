<%-- 
    Document   : cambiarPass
    Created on : 15/12/2018, 07:53:54 PM
    Author     : Rick
--%>

<%@page import="clases.CryptWithMD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido al cambio de contraseña temporal</h1>

        <p>Por favor llena el siguiente formulario</p>
        <form action="cambiarPass.jsp" onsubmit="return validarPassword(this)">
            Ingresa tu usuario: <input type="text" name="usr"><br><br>
            Ingresa tu contraseña temporal: <input type="text" name="pass"><br><br>
            Ingresa tu nueva contraseña: <input type="text" name="passNueva"><br><br>
            Ingresa tu nueva contraseña: <input type="text" name="passNueva2"><br><br>
            <input type="submit">
        </form>
        <%
            String usr = "";
            String passTemp = "";
            String passN = "";
            String passN1 = "";

            if (request.getParameter("usr") != null) {
                usr = request.getParameter("usr");
            }
            if (request.getParameter("pass") != null) {
                passTemp = request.getParameter("pass");
            }

            if (request.getParameter("passNueva") != null) {
                passN = request.getParameter("passNueva");
            }
            if (request.getParameter("passNueva2") != null) {
                passN1 = request.getParameter("passNueva2");
            }
            CryptWithMD5 var = new CryptWithMD5();
            
           objConn.CambiaUsr(usr, var.cryptWithMD5(passN));

        %>

        <script>
            function validarPassword(f) {
                var p1 = document.getElementsByName("passNueva").value;
                var p2 = document.getElementsByName("passNueva2").value;
                var p3 = document.getElementsByName("pass").value;
                if (f.passNueva.value === f.passNueva2.value && f.pass.value === "12345") {
                    return true;
                } else {
                    alert("Alguna de las contraseñas esta mal, intenta de nuevo NO MALGASTES NUESTROS CORREOS");
                    return false;
                }
            }
        </script>
    </body>
</html>
