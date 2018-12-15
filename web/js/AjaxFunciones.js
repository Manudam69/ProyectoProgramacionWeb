/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ajax;  //Variable global para el uso de ajax

function LlamadaPagos() {
    //Comprando la peticion se ha completado en estado y ya termino el contenido (4)
    if (ajax.readyState == 4) {
        if (ajax.status == 200) {
            //escribimos el resultado en la pagina html
            document.getElementById("TablaPagos").innerHTML = ajax.responseText;
        }
    }


}


function LlamadaTabla() {
    //Comprando la peticion se ha completado en estado y ya termino el contenido (4)
    if (ajax.readyState == 4) {
        if (ajax.status == 200) {
            //escribimos el resultado en la pagina html
            document.getElementById("TablaAct").innerHTML = ajax.responseText;
        }
    }


}

function LlamadaOutEstado() {
    //Comprando la peticion se ha completado en estado y ya termino el contenido (4)
    if (ajax.readyState == 4) {
        if (ajax.status == 200) {
            //escribimos el resultado en la pagina html
            document.getElementById("PaisOut").innerHTML = ajax.responseText;
        }
    }
}

function LlamadaOutGasto() {
    //Comprando la peticion se ha completado en estado y ya termino el contenido (4)
    if (ajax.readyState == 4) {
        if (ajax.status == 200) {
            //escribimos el resultado en la pagina html
            document.getElementById("GastosT").innerHTML = ajax.responseText;
        }
    }
}


function LlamadaPromo() {
    //Comprando la peticion se ha completado en estado y ya termino el contenido (4)
    if (ajax.readyState == 4) {
        if (ajax.status == 200) {
            //escribimos el resultado en la pagina html
            document.getElementById("TotalProd").innerHTML = ajax.responseText;
        }
    }
}



//Funciones Ajax

function eliminarProd(id) {

     //alert(id);
    //Peticion ajax
    //Creamos el controlador segun el navegador en el que estemos
    if (window.XMLHttpRequest) {
        //No internet explorer
        ajax = new XMLHttpRequest();
    } else {
        //En internet explorer
        ajax = new ActiveXObject("Microsoft.XMLHTTP");
    }

    //Almacenamos en el control la funcion que se invocara cuando la peticion cambie de estado
    ajax.onreadystatechange = LlamadaTabla;

    //Enviamos la peticion 
    ajax.open("post", "BorrarP.jsp?idElimina="+id, true);
    ajax.send(null);


}

function selectEstado() {
    var x = document.getElementById("country").value;
        if (window.XMLHttpRequest) {
        //No internet explorer
        ajax = new XMLHttpRequest();
    } else {
        //En internet explorer
        ajax = new ActiveXObject("Microsoft.XMLHTTP");
    }

    //Almacenamos en el control la funcion que se invocara cuando la peticion cambie de estado
    ajax.onreadystatechange = LlamadaOutEstado;

    //Enviamos la peticion 
    ajax.open("post", "CambiarRegion.jsp?idPais="+x, true);
    ajax.send(null);
        
        
}

function selectGasto() {
    var x = document.getElementById("state").value;
        if (window.XMLHttpRequest) {
        //No internet explorer
        ajax = new XMLHttpRequest();
    } else {
        //En internet explorer
        ajax = new ActiveXObject("Microsoft.XMLHTTP");
    }

    //Almacenamos en el control la funcion que se invocara cuando la peticion cambie de estado
    ajax.onreadystatechange = LlamadaOutGasto;

    //Enviamos la peticion 
    ajax.open("post", "CambiarGastos.jsp?idEstado="+x, true);
    ajax.send(null);
        
        
}

function PromoCode(total) {
     
     
     
     var codigo = String(document.getElementById("PromoC").value);
     
     //alert(codigo);
     
        if (window.XMLHttpRequest) {
        //No internet explorer
        ajax = new XMLHttpRequest();
    } else {
        //En internet explorer
        ajax = new ActiveXObject("Microsoft.XMLHTTP");
    }

    //Almacenamos en el control la funcion que se invocara cuando la peticion cambie de estado
    ajax.onreadystatechange = LlamadaPromo;

    //Enviamos la peticion 
    ajax.open("post", "CambiarPromo.jsp?Total="+total+"&Codigo="+codigo, true);
    ajax.send(null);
        
        
}


function selectPago(opcion) {
    
    //alert(opcion);


        if (window.XMLHttpRequest) {
        //No internet explorer
        ajax = new XMLHttpRequest();
    } else {
        //En internet explorer
        ajax = new ActiveXObject("Microsoft.XMLHTTP");
    }

    //Almacenamos en el control la funcion que se invocara cuando la peticion cambie de estado
    ajax.onreadystatechange = LlamadaPagos;

    //Enviamos la peticion 
    ajax.open("post", "Cambiarmetodo.jsp?Opcion="+opcion, true);
    ajax.send(null);
        
        
}