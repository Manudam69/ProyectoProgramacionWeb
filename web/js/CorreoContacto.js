/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

async function enviar() {
    var nombre = document.getElementById("usuario").value;
    var correo = document.getElementById("to_mail").value;
    var asunto = document.getElementById("asunto").value;
    var mensaje = document.getElementById("mensaje").value;

    emailjs.init("user_9uafhwkJK3GEm5Swrs4jg");
    //Para mandar a nuestro correo solo es cambiar la variable correo - to_mail: farolitoStore@gmail.com
    emailjs.send("gmail", "plantilla_contacto", {"from_name": "Farolito Store", "name": nombre, "imagen_logo": "LOLO", "ejs_dashboard__test_template": true, "message": mensaje, "to_mail": correo, "subject": asunto})
    alert('Mensaje enviado');
}
        