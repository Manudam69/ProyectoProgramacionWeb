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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cambio de contraseña</title>
        <link rel="icon" type="image/png" href="images/logo.png">
        <style>
            * {
                font-family: 'Abel', sans-serif;
            }

            body {
                background-color: rgb(248, 249, 250);
            }

        </style>
    </head>
    <body class="text-center">
           
        <form class="form-signin mx-auto p-5 mt-5" style="width: 400px;" action="index.jsp" method="post" onsubmit="return validarPassword(this)">
            <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
            <h1 class="h3 mb-3 font-weight-normal">Cambio de contraseña</h1>
            
            <label for="inputUser" class="sr-only">Usuario</label>
            <input type="text" id="inputUser" class="form-control mb-1" placeholder="Usuario" name="usr" required autofocus>

            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control mb-2" placeholder="Contraseña temporal" name="pass" required>
            
            <label for="inputPassword2" class="sr-only">Password</label>
            <input type="password" id="inputPassword2" class="form-control mb-2" placeholder="Nueva contraseña" name="passNueva" required>
            
            <label for="inputPassword3" class="sr-only">Password</label>
            <input type="password" id="inputPassword3" class="form-control mb-2" placeholder="Repite la nueva contraseña" name="passNueva2" required>
                  
            <button class="btn btn-lg btn-primary btn-block" type="submit">Cambiar contraseña</button>
        </form>





        <%
            String usr = "";
            String passTemp = "";
            String passN = "";
            String passN1 = "";
            String usuarioBD = "";
            int usuarioExist = 0;

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
                   alert("Todo bien ingresado. Redirigiendo al inicio.");
                    return true;
              }else{
                    alert("Alguna de las contraseñas esta mal, intenta de nuevo.");
                    return false;
                }     
            }
        </script>
    </body>
</html>
