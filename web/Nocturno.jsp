<%-- 
    Document   : Nocturno
    Created on : Dec 13, 2018, 10:41:15 PM
    Author     : Hector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="REFRESH" content="0;URL=index.jsp"><%//Este meta regresa al menu.jsp unavez que esta "pagina" a sido cargada%>
    </head>                                                  
    <%                
        String name = (String) session.getAttribute("usuario");//Recupera el ID de el usuario de la secion
    %>
    <%
        Cookie galletafondo = new Cookie(name + "Fondo", "#121212");//Establese la galleta y su valor, en este caso:
        galletafondo.setPath("/");                                  //afondo (para el caso de el usuario con id a) y un string para el color
        galletafondo.setMaxAge(60 * 60 * 24);
        response.addCookie(galletafondo);//añade a la "lista" de cookies que tiene el usuario la nueva cookie,
                                         //en caso de que lla exista una cookie con "afondo" como nombre, esta se sobre escribe
        Cookie galletafondo2 = new Cookie(name + "Letra", "#efefef");//Lo mismo pero para el color de las letras
        galletafondo2.setPath("/");
        galletafondo2.setMaxAge(60 * 60 * 24);
        response.addCookie(galletafondo2);


            //La pagina esta basia pues se utilisa como una funcion. 
    %>  
    <body>
        
    </body>
</html>
