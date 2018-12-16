<%-- 
    Document   : Alta_Productos
    Created on : 8/12/2018, 11:23:19 AM
    Author     : César
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<%
    String query = "select max(id_p) from farolito.productos;";
    objConn.Consult(query);
    int i = objConn.rs.getInt(1);
%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta charset="UTF-8">
        <title>Alta Productos</title>
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
        <div class="container">
            <form class="form-signin mx-auto p-5 mt-5" onsubmit="" method="post" action="ProductoDB.jsp">
                <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
                <br>
                <input type="number" name="id" placeholder="<%=i+1%>" value="<%=i+1%>" min="<%=i + 1%>" max="<%=i + 1%>" hidden>
                
                <label for="inputName" class="">Nombre</label>
                <input type="text" id="inputName" class="form-control mb-2" name="nombre" placeholder="Nombre Producto" required autofocus>

                <label for="inputName" class="">Descripcion</label>
                <input type="text" id="inputName" class="form-control mb-2" name="descripcion" placeholder="Descripcion" required>

                <label for="inputNumber" class="">Precio</label>
                <input type="number" id="inputUser" class="form-control mb-2" name="precio" placeholder="Precio" required>
                
                <label for="inputNumber" class="">Existencias</label>
                <input type="number" id="inputUser" class="form-control mb-2" name="existencia" placeholder="Existencias" required>

                <label for="inputName" class="">Imagen</label>
                <input type="file" id="inputFile" class="form-control mb-2" name="file" placeholder="Imagen.jpg" required>

                <label for="tipo" class="">Tipo de producto</label>
                <select class="custom-select d-block w-100 mb-5" name="tipo">
                    <option value="0">Elegir...</option>
                    <option value="Linea Blanca">Linea Blanca</option>
                    <option value="Electronicos">Electronicos</option>
                    
                </select>
               
                
                <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="notify()">Dar de alta producto</button>
                
            </form>
                
                
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script>
            
        </script>
    </body>
</html>
