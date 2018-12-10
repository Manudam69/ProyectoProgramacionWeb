
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String sala = (String) application.getAttribute("sala");
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="20"/>
        <title>JSP Page</title>
        <style type="text/css">
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
        <h1>Bienvenido</h1>
        <div id="sala"><%=sala%></div><br>

        <form action="Chat" method="post" style="text-align: center">
          Mensaje: <input type="text" name="msg" style="width: 244px" id="msg"/>
            <input type="submit" value="Enviar" style="width: 60px"/>
        </form>
    </body>
</html>
