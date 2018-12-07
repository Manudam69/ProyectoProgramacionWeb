/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ajax;  //Variable global para el uso de ajax

function LlamadaTabla() {
    //Comprando la peticion se ha completado en estado y ya termino el contenido (4)
    if (ajax.readyState == 4) {
        if (ajax.status == 200) {
            //escribimos el resultado en la pagina html
            document.getElementById("TablaAct").innerHTML = ajax.responseText;
        }
    }


}

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



