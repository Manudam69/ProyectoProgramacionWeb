<%-- 
    Document   : CambioGastos
    Created on : 9/12/2018, 12:45:28 AM
    Author     : Rick
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Producto"%>
<%@page import="clases.ProductoCarrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String estado = request.getParameter("idEstado");

            HttpSession sesion = request.getSession(true);

            ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");

            //Variables para mostrar el contenido del carrito
            float TotalAPagar = 0;
            int cantidadP = 0;
            int precio_p = 0, existencias = 0, id_P = 0;
            String nombre_P = "", descrip = "";
            int cantidad_p = 0;

            //Variables de descuento
            float porDesc = 0, porImpuesto = 0, porGasto = 0;

            for (int i = 0; i < lista_c.size(); i++) {
                ProductoCarrito aux = lista_c.get(i);
                Producto Norm = aux.getP();

                id_P = Norm.getId();
                nombre_P = Norm.getNombre();
                precio_p = Norm.getPrecio();
                descrip = Norm.getDescrip();
                cantidad_p = lista_c.get(i).getCantidad();
                int cuenta = cantidad_p * precio_p;
                TotalAPagar += cuenta;
            }

            if (estado.equals("AGS")) {
                porImpuesto = 16;
                porGasto = 0;
            } else if (estado.equals("CDMX")) {
                porImpuesto = 16;
                porGasto = 95;
            } else if (estado.equals("GDL")) {
                porImpuesto = 16;
                porGasto = 70;
            } else if (estado.equals("CALI")) {
                porImpuesto = 11;
                porGasto = 210;
            } else if (estado.equals("TX")) {
                porImpuesto = 11;
                porGasto = 180;
            } else if (estado.equals("NY")) {
                porImpuesto = 11;
                porGasto = 300;
            }

            //Calculos del total a pagar
            porDesc = porDesc / 100;
            porImpuesto = porImpuesto / 100;
            TotalAPagar = TotalAPagar - (TotalAPagar * porDesc);
            porImpuesto = Math.round(TotalAPagar * porImpuesto);
            TotalAPagar = TotalAPagar + porImpuesto + porGasto;

            if (porGasto == 0) {
        %>
        <div id="GastosT">
            <li class="list-group-item d-flex justify-content-between">
                <span name="iva" value="<%=porImpuesto%>">Impuestos (MXN)</span>
                <strong>$<%=porImpuesto%></strong>
            </li>

            <li class="list-group-item d-flex justify-content-between">
                <span name="Gastos" value="<%=porGasto%>">Gastos de Envio (MXN)</span>
                <strong>Gratuito </strong>
            </li>
            <div id="TotalProd">
                <li class="list-group-item d-flex justify-content-between">
                    <span>Total (MXN)</span>
                    <strong id="total">$<%=TotalAPagar%></strong>
                </li>
                <br>
                    <div class="input-group">
                        <input type="text" class="form-control" name="PromoCode" placeholder="Promo code">
                        <div class="input-group-append">  
                            <button class="btn btn-secondary" onclick="PromoCode(<%=TotalAPagar%>)">Redeem</button>
                        </div>
                    </div>

            </div>

        </div>

        <%} else {%>
        <div id="GastosT">
            <li class="list-group-item d-flex justify-content-between" >
                <span name="iva" value="<%=porImpuesto%>">Impuestos (MXN)</span>
                <strong>$<%=porImpuesto%></strong>
            </li>

            <li class="list-group-item d-flex justify-content-between">
                <span name="Gastos" value="<%=porGasto%>">Gastos de Envio (MXN)</span>
                <strong>$<%=porGasto%> </strong>
            </li>

            <div id="TotalProd">
                <li class="list-group-item d-flex justify-content-between">
                    <span>Total (MXN)</span>
                    <strong id="total">$<%=TotalAPagar%></strong>
                </li>
                <br>
                    <div class="input-group">
                        <input type="text" class="form-control" id="PromoC" name="PromoCode" placeholder="Promo code">
                        <div class="input-group-append">  
                            <button class="btn btn-secondary" onclick="PromoCode(<%=TotalAPagar%>)">Redeem</button>
                        </div>
                    </div>

            </div>

        </div>
        <%}%>
    </body>
</html>
