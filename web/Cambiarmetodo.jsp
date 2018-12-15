<%-- 
    Document   : Cambiarmetodo
    Created on : 12/12/2018, 08:16:39 PM
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
            int opcion = Integer.parseInt(request.getParameter("Opcion"));
            if (opcion == 1) {
        %>
        <div class="row" id="TablaPagos" style="margin-left: 1px;">
            <div class="col-md-6 mb-3">
                <label for="cc-name">Nombre en la tarjeta*</label>
                <input type="text" class="form-control" id="cc-name" name="TarjetaNom" placeholder="" required>
                <small class="text-muted">Nombre completo mostrado en la tarjeta</small>
                <div class="invalid-feedback">
                    Name on card is required
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="cc-number">Numero de la tarjeta de credito*</label>
                <input type="text" class="form-control" id="cc-number" name="TarjetaNum" placeholder="" minlength="16" maxlength="16" required>
                <div class="invalid-feedback">
                    Credit card number is required
                </div>
            </div>

            <div class="row">
                <div class="col-md-3 mb-3" style=" margin-left:16px;">
                    <label for="cc-expiration">Expiración*</label>
                    <input type="text" class="form-control" id="cc-expiration" name="Exp" placeholder="08/20" required>
                    <div class="invalid-feedback">
                        Expiration date required
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="cc-cvv">CVV*</label>
                    <input type="text" class="form-control" id="cc-cvv" name="CVV" placeholder="314" pattern="[0-9]{3}" required>
                    <div class="invalid-feedback">
                        Security code required
                    </div>
                </div>
            </div>        
        </div>    

        <%
          }else if(opcion == 2){
        %>    
        
        <div class="row" id="TablaPagos" style="margin-left: 2px;">
            <div class="col-md-6 mb-3">
                <label for="cc-name">Correo de la cuenta*</label>
                <input type="email" class="form-control" id="cc-name" name="TarjetaNom" placeholder="" required>
                <small class="text-muted">No se guardarán sus datos</small>
                <div class="invalid-feedback">
                    Name on card is required
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="cc-number">Contraseña de la cuenta*</label>
                <input type="password" class="form-control" id="cc-number" name="TarjetaNum" placeholder="" minlength="1" maxlength="22" required>
                <div class="invalid-feedback">
                    Credit card number is required
                </div>
            </div>
       
        </div> 
        
        <%} %>
    </body>
</html>
