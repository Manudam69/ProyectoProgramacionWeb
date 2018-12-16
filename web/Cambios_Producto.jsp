<%-- 
    Document   : Cambios_Producto
    Created on : 8/12/2018, 12:53:58 PM
    Author     : César
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="mySql.MySqlConn"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<!DOCTYPE html>
<html lang="es">

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta charset="UTF-8">
        <title>Cambios Productos</title>
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
        <%

            MySqlConn obj = new MySqlConn();
            ArrayList<String> lista = new ArrayList();
            int id = 0;
            String nombre = "";

            obj.Consultar();
            obj.rs.beforeFirst();//para tomar el primer registro
            while (obj.rs.next()) {
                nombre = obj.rs.getString(1);
                lista.add(nombre);
            }
        %>
        <div class="container">

            <form class="form-signin mx-auto p-5 mt-5" method="post" action="Cambios_Producto.jsp">
                <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
                <br>

                <label for="producto" class="">ID Producto a cambiar</label>
                <select class="custom-select d-block w-100 mb-5" name="producto">
                    <%for (int i = 0; i < lista.size(); i++) {
                            out.println("<option value=" + lista.get(i) + ">" + lista.get(i) + "</option>");
                        }%>  
                </select>
                <label for="inputName" class="">Nombre</label>
                <input type="text" id="inputName" class="form-control mb-2" name="nuevoNombre" placeholder="Nombre Producto" required autofocus>

                <label for="inputName" class="">Descripcion</label>
                <input type="text" id="inputName" class="form-control mb-2" name="nuevaDescripcion" placeholder="Descripcion" required>

                <label for="inputNumber" class="">Precio</label>
                <input type="number" id="inputUser" class="form-control mb-2" name="nuevoPrecio" placeholder="Precio" required>

                <label for="inputNumber" class="">Existencias</label>
                <input type="number" id="inputUser" class="form-control mb-2" name="nuevaExistencia" placeholder="Existencias" required>

                <label for="inputName" class="">Imagen</label>
                <input type="file" id="inputFile" class="form-control mb-2" name="file" placeholder="Imagen.jpg" required>

                <label for="tipo" class="">Tipo de producto</label>
                <select class="custom-select d-block w-100 mb-5" name="tipo">
                    <option value="0">Elegir...</option>
                    <option value="Linea Blanca">Linea Blanca</option>
                    <option value="Electronicos">Electronicos</option>

                </select>

                <button class="btn btn-lg btn-primary btn-block" type="submit">Cambiar Producto</button>

            </form>
            <%
                FileInputStream fis;
                int n_precio = 0;
                int n_exis = 0;
                String producto = request.getParameter("producto");

                String n_nombre = request.getParameter("nuevoNombre");
                String n_descripcion = request.getParameter("nuevaDescripcion");
                String n_precio1 = request.getParameter("nuevoPrecio");
                String nuevoarch = request.getParameter("file");
                String n_tipo = request.getParameter("tipo");
                String path = getServletContext().getRealPath("/");
                
                if (n_precio1 != null) {
                    n_precio = Integer.parseInt(n_precio1);
                }
                String n_exis1 = request.getParameter("nuevaExistencia");
                if (n_exis1 != null) {
                    n_exis = Integer.parseInt(n_exis1);
                }

                if (nuevoarch == null) {//no tengo idea del porque toma null asi que el if le pone algo a ese pedo
                    nuevoarch = "dummy";
                } else {
                    nuevoarch = request.getParameter("file");
                    path += "\\..\\..\\imagenes\\"+ nuevoarch;


                    File image = new File(path);
                    fis = new FileInputStream(image);
                    out.println("<br>1->" + n_nombre);
                    out.println("<br>2->" + n_descripcion);
                    out.println("<br> ->" + n_exis);
                    out.println("<br>3->" + n_precio);
                    out.println("<br>4->" + nuevoarch);
                    out.println("<br>tipo->" + n_tipo);
                    obj.Cambios(producto, n_precio, n_exis, n_nombre, n_descripcion, fis, image, n_tipo);
                    out.println("<br>->" + lista);
                }
            %>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>




