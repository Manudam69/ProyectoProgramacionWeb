<%-- 
    Document   : CheckRecuperacion
    Created on : Dec 9, 2018, 4:44:56 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("resBD") != null) {
                if (request.getParameter("resBD").equals(request.getParameter("res"))) {
                    out.println("tas bien");
                }
            }

        %>
    </body>
</html>
