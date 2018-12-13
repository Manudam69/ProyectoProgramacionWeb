<%-- 
    Document   : CheckOut
    Created on : Nov 18, 2018, 7:21:50 PM
    Author     : MD
--%>
<%@page import="clases.Promos"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Vector"%>
<%@page import="clases.Producto"%>
<%@page import="clases.ProductoCarrito"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Facturacion</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="images/logo.png">
        <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
        <script src="./js/AjaxFunciones.js"></script> 
        <style>
            *{
                font-family: 'Abel', sans-serif;
            }
        </style>
    </head>
    <body class="bg-light">
        <div class="container p-2">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="72" height="72">
                <h2>DIRECCION DE FACTURACION</h2>
            </div>
            <div class="row">

                <div class="col-md-4 order-md-2 mb-4">
                    <%
                        HttpSession sesion = request.getSession(true);

                        ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");

                        //Variables para mostrar el contenido del carrito
                        float TotalAPagar = 0;
                        int cantidadP = 0;
                        int precio_p = 0, existencias = 0, id_P = 0;
                        String nombre_P = "", descrip = "";
                        int cantidad_p = 0;

                        ArrayList<Promos> descuentos = new ArrayList<Promos>();
                        descuentos.add(new Promos("FUTURE", "2018-12-31", 10));
                        descuentos.add(new Promos("NINTENDO", "2019-2-14", 5));
                        descuentos.add(new Promos("NUEVO-CLIENTE", "2020-12-10", 15));

                        int vectDesc[] = {5, 15, 20};


                    %>
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-muted">Tu carrito</span>
                        <%    //Cantidad de productos en el carrito
                            int cantCar = 0;
                            for (int i = 0; i < lista_c.size(); i++) {
                                cantCar += lista_c.get(i).getCantidad();
                            }%>  
                        <span class="badge badge-secondary badge-pill"><%=cantCar%></span>
                    </h4>
                    <ul class="list-group mb-3">
                        <% for (int i = 0; i < lista_c.size(); i++) {
                                ProductoCarrito aux = lista_c.get(i);
                                Producto Norm = aux.getP();

                                id_P = Norm.getId();
                                nombre_P = Norm.getNombre();
                                precio_p = Norm.getPrecio();
                                descrip = Norm.getDescrip();
                                cantidad_p = lista_c.get(i).getCantidad();
                                int cuenta = cantidad_p * precio_p;
                                TotalAPagar += cuenta;
                        %>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0"><%=nombre_P%></h6>
                                <small class="text-muted"><%=descrip%></small>
                            </div>
                            <div>
                                <span class="text-muted">$<%=precio_p%> MXN</span>
                                <span class="text-muted">Cantidad: <%=cantidad_p%></span>
                            </div>
                        </li>

                        <% }%>
                        <div id="GastosT">  
                            <li class="list-group-item d-flex justify-content-between" >
                                <span>Impuestos (MXN)</span>
                                <strong>$0 </strong>
                            </li>

                            <li class="list-group-item d-flex justify-content-between">
                                <span>Gastos de Envio (MXN)</span>
                                <strong>$0 </strong>
                            </li>

                            <div id="TotalProd">
                                <li class="list-group-item d-flex justify-content-between">
                                    <span>Total (MXN)</span>
                                    <strong id="total">$0 </strong>
                                </li>
                                <br>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="PromoC" name="PromoCode" placeholder="Promo code" disabled>
                                    <div class="input-group-append">  
                                        <button class="btn btn-secondary" onclick="PromoCode(<%=TotalAPagar%>)" disabled>Redeem</button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>



                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Dirección de envío</h4>
                    <form  action="./CheckOut.jsp" method="get" class="needs-validation">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstName">Nombre(s)*</label>
                                <input type="text" class="form-control" id="firstName" placeholder="" name="Nombres" required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="lastName">Apellidos*</label>
                                <input type="text" class="form-control" id="lastName" placeholder="" name="Apellidos" required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="username">Usuario*</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">@</span>
                                </div>
                                <input type="text" class="form-control" id="username" placeholder="Usuario"  name="Usuario" pattern="[A-Za-z]{*}"  required>
                                <div class="invalid-feedback" style="width: 100%;">
                                    Your username is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="email">Correo electrónico <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="email" name="correo" placeholder="tu@ejemplo.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address">Dirección*</label>
                            <input type="text" class="form-control" name="direccion1" id="address" required>
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address2">Dirección 2<span class="text-muted"> (Optional)</span></label>
                            <input type="text" class="form-control" id="address2" name="direccion2" placeholder="Apartamento o casa">
                        </div>

                        <div class="row">
                            <div class="col-md-5 mb-3">
                                <label for="country">País*</label>
                                <select class="custom-select d-block w-100" id="country" name="pais" onchange="selectEstado();" required>
                                    <option value="x">Elegir...</option>
                                    <option value="MX">México</option>
                                    <option value="USA">Estados Unidos</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3" id="PaisOut">
                                <label for="state">Estado*</label>
                                <select class="custom-select d-block w-100" id="state" name="estado" required>
                                    <option value="0">Elegir...</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>


                            <div class="col-md-3 mb-3">
                                <label for="zip">Codigo postal*</label>
                                <input type="text" class="form-control" id="zip" name="CP" placeholder="" required>
                                <div class="invalid-feedback">
                                    Zip code required.
                                </div>
                            </div>
                        </div>
                        <hr class="mb-4">
                         <h4 class="mb-3">ENVIO</h4>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="same-address" name="envio">
                            <label class="custom-control-label" for="same-address">Standard (3-5 días habiles)</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="save-info" name="envio">
                            <label class="custom-control-label" for="save-info">Express (1-2 días habiles)</label>
                        </div>
                         
                        <hr class="mb-4">

                        <h4 class="mb-3">Pago</h4>

                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                <label class="custom-control-label" for="credit">Tarjeta de credito</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label" for="debit">Tarjeta de debito</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label" for="paypal">PayPal</label>
                            </div>
                        </div>
                        <div class="row">
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
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
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
                        <hr class="mb-4">
                        <button class="btn btn-primary btn-lg btn-block mb-5" type="submit">Continuar</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
