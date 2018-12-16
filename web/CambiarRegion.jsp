<%-- 
    Document   : CambiarRegion
    Created on : 8/12/2018, 06:28:40 PM
    Author     : Rick
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
            String idPais = request.getParameter("idPais");

            if (idPais != null && idPais.equals("MX")) {
        %> 
        <div class="col-md-14" id="PaisOut">
            <label for="state">Estado*</label>
            <select class="custom-select d-block w-100" id="state" name="estado" onchange="selectGasto();" required>
                <option value="x">Elegir...</option>
                <option value="AGS">Aguascalientes</option>
                <option value="CDMX">Ciudad de México</option>
                <option value="GDL">Guadalajara</option>
            </select>
            <div class="invalid-feedback">
                Please provide a valid state.
            </div>
        </div>
        <%} else if ( idPais != null && idPais.equals("USA")) {%>
        <div class="col-md-14" id="PaisOut">
            <label for="state">Estado*</label>
            <select class="custom-select d-block w-100" id="state" name="estado" onchange="selectGasto();" required>
                <option value="x">Elegir...</option>
                <option value="CA">California</option>
                <option value="NY">New York</option>
                <option value="TX">Texas</option>
            </select>
            <div class="invalid-feedback">
                Please provide a valid state.
            </div>
        </div>
        <%} else if (idPais != null && idPais.equals("x")) {%>
        <div class="col-md-14" id="PaisOut">
            <label for="state">Estado*</label>
            <select class="custom-select d-block w-100" id="state" name="estado" onchange="selectGasto();" required>
                <option value="">Elegir...</option>
            </select>
            <div class="invalid-feedback">
                Please provide a valid state.
            </div>
        </div>
        <% }%> 

    </body>
</html>
