<%-- 
    Document   : Bajas_Producto
    Created on : 8/12/2018, 05:26:06 PM
    Author     : Jafet
--%>
<%@page import="mySql.MySqlConn"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="objConn" class="mySql.MySqlConn"/>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta charset="UTF-8">
        <title>Baja de productos</title>
        <link rel="icon" type="image/png" href="images/logo.png">
        <style>
            * {
                font-family: 'Abel', sans-serif;
            }

            body {
                background-color: rgb(248, 249, 250);
            }

        </style>
        <script>

        </script>
    </head>
    <body>
        <%

            int id = 0;
            String nomp = "";
            int precio = 0;
            int exis = 0;
            String tipo = "";

            MySqlConn obj = new MySqlConn();
            String nombre = "";
            ArrayList<String> lista = new ArrayList();
            obj.Consultar();
            obj.rs.beforeFirst();//para tomar el primer registro
            while (obj.rs.next()) {
                nombre = obj.rs.getString(1);
                lista.add(nombre);

            }
        %>

        <div class="container">
            <form class="form-signin mx-auto p-5 mt-5 text-center" onsubmit="alerta()" method="post" action="Bajas_Producto.jsp">
                <a href="./index.jsp"><img class="mb-4" src="images/logo.png" alt="" width="72" height="72"></a>
                <br>

                <label for="producto" class="">ID del producto a borrar</label>
                <select class="custom-select d-block w-100 mb-5" name="producto">
                    <%for (int i = 0; i < lista.size(); i++) {
                            out.println("<option value=" + lista.get(i) + ">" + lista.get(i) + "</option>");
                        }%>  
                </select>


                <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="alert()">Borrar producto</button>
            </form>

                <table class="table table-bordered text-center">
                <tr>
                    <th>id</th>
                    <th>Nombre producto</th>
                    <th>Precio</th>
                    <th>Existencias</th>
                    <th>Tipo de producto</th>
                    </thead>
                <tbody>
                    <%
                        obj.Consultar();
                        obj.rs.beforeFirst();
                        while (obj.rs.next()) {
                            id = obj.rs.getInt(1);
                            nomp = obj.rs.getString(4);
                            precio = obj.rs.getInt(2);
                            exis = obj.rs.getInt(3);
                            tipo = obj.rs.getString(7);

                    %>

                    <tr>
                        <td><%=id%></td>
                        <td><%=nomp%></td>
                        <td><%=precio%></td>
                        <td><%=exis%></td>
                        <td><%=tipo%></td>
                    </tr>

                    <%}%>
            </table>
        </div>
        <%
            String borrar = request.getParameter("producto");
            obj.Bajas(borrar);
        %>

        <script>
            function alerta() {
                alert("Se ha dado de baja exitosamente el producto");
            }
        </script>
    </body>
</html>
