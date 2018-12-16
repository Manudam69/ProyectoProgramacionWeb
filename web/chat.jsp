
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario1 = (String) session.getAttribute("usuario");//Usuario y Galleta
    Cookie[] galleta = request.getCookies();
    String Fondo = "";
    String FondoLetra = "";
%>
<%
    for (int i = 0; i < galleta.length; i++) {//Busca los colores que el usuario selecciono usando la sesion
        if (galleta[i].getName().equals(usuario1 + "Fondo")) {
            Fondo = galleta[i].getValue();
        }
        if (galleta[i].getName().equals(usuario1 + "Letra")) {
            FondoLetra = galleta[i].getValue();
        }
    }
%>

<%
    String sala = (String) application.getAttribute("sala");
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="20"/>
        <title>Chat</title>
        
        <style type="text/css">            
            body{ background-color:<%=Fondo%>;<%//Al recuperar los colores se ingresan en el style de la pagina%>
                  color:<%=FondoLetra%>;}            
            #sala {
                margin: auto;
                border: 1px solid #999;
                padding: 6px;
                overflow: auto;
                width: 300px;
                height: 100px;
            }
        </style>

        <script type="text/javascript">
            function load() {
                document.getElementById("msg").focus();
            }
        </script>
    </head>
    <body onload="load">
         <div class="container text-center">
        <h1>Bienvenido</h1>
        <div id="sala" class="form-control text-left"><%=sala%></div><br>
       
        <form action="Chat" method="post" style="text-align: center">
            Mensaje: <input type="text" name="msg" id="msg" class="form-control text-center mb-3 w-50"/>
            <input type="submit" value="Enviar" class="btn btn-primary"/>
        </form>
            </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
