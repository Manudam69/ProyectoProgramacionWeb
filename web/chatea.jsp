<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Bievenido al chat</h2>
        <form action="Ingreso" method="post">
            <table style="margin: auto">
                <tr>
                    <td>Nick</td>
                    <td>
                        <input type="text" name="nick"/>
                    </td>
                </tr>
                <tr>
                    <td>Color</td>
                    <td>
                        <select name="color">
                            <option value="#900">Rojo</option>
                            <option value="#090">Verde</option>
                            <option value="#009">Azul</option>
                            <option value="#ffa500">Naranja</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><br></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <input type="submit" value="Enviar Datos"/>
                    </td>
                </tr>
            </table>
        </form>
        <a href="index.jsp"><p>Volver al inicio</p></a>
        <p>El chat consiste en una crear una sesion generica donde puedes interactuar con alguno de nuestros administradores</p>
    </body>
</html>


