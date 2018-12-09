<%-- 
    Document   : CambiarP
    Created on : 9/12/2018, 01:18:51 PM
    Author     : Rick
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Promos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            float TotalAPagar = Float.parseFloat(request.getParameter("Total"));
            String codigo = request.getParameter("Codigo");
            
           //Variables de descuento
                        float porDesc = 0;
                        ArrayList<Promos> descuentos = new ArrayList<Promos>();
                        descuentos.add(new Promos("FUTURE", "2018-12-31", 10));
                        descuentos.add(new Promos("NINTENDO", "2019-2-14", 20));
                        descuentos.add(new Promos("NUEVO-CLIENTE", "2020-12-10", 15));
            
            
            if (request.getParameter("Codigo") != null) {
                                //Codigos de descuento 
                                boolean find = false;

                                for (int i = 0; i < descuentos.size(); i++) {

                                    if (descuentos.get(i).getCodigo().equals(request.getParameter("Codigo"))) {
                                        porDesc = descuentos.get(i).getDesc();
                                        find = true;
                                        break;
                                    }

                                }
                    if (find == true) {
          %>  
      <div id="TotalProd">
          <li class="list-group-item d-flex justify-content-between bg-light">
                            <div class="text-success">
                                <h6 class="my-0">Promo code</h6>
                                <small><%=request.getParameter("Codigo")%></small>
                            </div>
                            <span class="text-success">-<%=porDesc%>%</span>
                        </li>
                        <%     }
                            }
                            porDesc = porDesc / 100;
                            TotalAPagar = TotalAPagar - (TotalAPagar * porDesc);
                            TotalAPagar = Math.round(TotalAPagar);
                        %>
            <li class="list-group-item d-flex justify-content-between">
                <span>Total NUEVO (MXN)</span>
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

    </body>
</html>